#include "adv_profiler.h"
/*
Performs following task:
1. Use profiling tool to collect counters for a base (no opt version)
2. Store counters in a CSV (Data Collection)
3. Later use for inference to chose best candidate using ML
*/

void AdvProfiler::addNoOptCompilerFlags(bool link_phase) {
  compilerCL.clear();
  compilerCL.push_back("icc");
  compilerCL.push_back(
      "-O1 -g -no-vec"); //-xHOST generate vector code, even with -no-vec
  if (link_phase || mCompiler_enabled_options[PARALLEL])
    compilerCL.push_back("-qopenmp");
  compilerCL.push_back("-std=c11");
  compilerCL.push_back("-w");
  compilerCL.push_back(mCompiler_include_path);
  compilerCL.push_back(mCompiler_macro_defs);
  compilerCL.push_back(mCompiler_extraPreSrcFlags);
  compilerCL.push_back(mCompiler_extraPostSrcFlags);
}

void AdvProfiler::compileSource() {
  string CL;
  for (vector<string>::iterator iterv = compilerCL.begin();
       iterv != compilerCL.end(); iterv++)
    CL += *iterv + space_str;
  /* Collect all non profile source to compile for Adv Profiling */
  for (set<string>::iterator iters = files_to_compile.begin();
       iters != files_to_compile.end(); iters++) {
    if ((*iters).find(mCompiler_profile_file_tag) != string::npos ||
        (*iters).find(mCompiler_header_code_name) != string::npos)
      continue;
    string out_file = (*iters).substr(0, (*iters).find_last_of(".")) +
                      adv_profile_str + dot_o_str;
    executeCommand(CL + minus_c_str + space_str + *iters + space_str +
                   minus_o_str + space_str + out_file);
    files_to_link.insert(out_file);
  }
}

void AdvProfiler::linkObjs() {
  if (mCompiler_mode == mode_FROM_OBJECT || mCompiler_mode == mode_COMPLEX) {
    DIR *dir;
    struct dirent *ent;
    /* If in Complex mode, then also fetch from dir */
    files_to_link.clear();
    set<string> filename_keyword;
    for (auto const &str : mCompiler_object_file) {
      int lastSlashPos = str.find_last_of('/');
      int lastDotPos   = str.find_last_of('.');
      filename_keyword.insert(
          str.substr(lastSlashPos + 1, lastDotPos - lastSlashPos - 1));
    }
    for (auto const &str : mCompiler_input_file) {
      int lastSlashPos = str.find_last_of('/');
      int lastDotPos   = str.find_last_of('.');
      filename_keyword.insert(
          str.substr(lastSlashPos + 1, lastDotPos - lastSlashPos - 1));
    }

    if ((dir = opendir((getDataFolderPath()).c_str())) != NULL) {
      /* print all the files and directories within directory */
      while ((ent = readdir(dir)) != NULL) {
        string filename(ent->d_name);
        bool valid_file_link = false;
        for (auto const &str : filename_keyword) {
          if (filename.find(str + "_") == 0) {
            valid_file_link = true;
            break;
          }
        }
        if (!valid_file_link)
          continue;
        if (filename.at(0) != '.' &&
            isEndingWith(filename, adv_profile_str + dot_o_str)) {
          files_to_link.insert(getDataFolderPath() + ent->d_name);
          if (mCompiler_enabled_options[MC_INFO])
            cout << "Adding files for Linking: " << ent->d_name << endl;
        }
      }
      closedir(dir);
    } else {
      /* could not open directory */
      cerr << "Couldn't open data folder: " << getDataFolderPath() << endl;
      exit(EXIT_FAILURE);
    }
  }
  string CL;
  for (vector<string>::iterator iterv = compilerCL.begin();
       iterv != compilerCL.end(); iterv++)
    CL += *iterv + space_str;
  string object_files;
  string out_file;
  for (set<string>::iterator iters = files_to_link.begin();
       iters != files_to_link.end(); iters++) {
    object_files += *iters + space_str;
    out_file =
        getDataFolderPath() + mCompiler_binary_name + "_" + adv_profile_str;
    setProfBinary(out_file);
  }
  CL +=
      object_files + space_str + minus_o_str + space_str + out_file + space_str;

  vector<string> post_CL_flags = post_linker_flags[compiler_ICC];
  for (vector<string>::iterator iterv = post_CL_flags.begin();
       iterv != post_CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  executeCommand(CL);
}

void AdvProfiler::addProfileToolOptions() {
  vector<string> counters = {
#ifdef OS_CENTOS
#include "counters_knl_extended.vtune"
#else
#include "counters_skylake.vtune"
#endif
  };
  if (counters.empty())
    cerr << "Vtune Counter list empty" << endl;

  toolCL_collect.push_back(vtune_path + "amplxe-cl" + space_str);
  toolCL_collect.push_back("-collect-with runsa" + space_str);
  toolCL_collect.push_back("-knob analyze-openmp=true" + space_str);
  toolCL_collect.push_back("-knob event-config=");
  string comma_str               = ",";
  vector<string>::iterator iterv = counters.begin();
  toolCL_collect.push_back(*iterv);
  for (; iterv != counters.end(); iterv++)
    toolCL_collect.push_back(comma_str + *iterv);
  toolCL_collect.push_back(space_str + "-app-working-dir" + space_str);
  toolCL_collect.push_back(getDataFolderPath() + space_str);
  toolCL_collect.push_back("-user-data-dir=");
  toolCL_collect.push_back(getDataFolderPath() + space_str);
  toolCL_collect.push_back("-no-summary" + space_str);
  toolCL_collect.push_back("--" + space_str);
  toolCL_collect.push_back(getProfBinary());
  toolCL_collect.push_back(space_str + mCompiler_profiler_input);
  //  TODO: Handle Input file for profiling
}

void AdvProfiler::runProfileTool() {
  string CL;
  for (vector<string>::iterator iterv = toolCL_collect.begin();
       iterv != toolCL_collect.end(); iterv++)
    CL += *iterv;
  string result = executeCommand(CL);
  if (result.find("Collection failed") != string::npos) {
    cerr << "Profiling failed" << endl;
    exit(EXIT_FAILURE);
  }
  if (result.find(getDataFolderPath()) != string::npos) {
    setProfDir(result.substr(result.find(getDataFolderPath()),
                             getDataFolderPath().length() +
                                 vtune_default_dir_naming.length()));
    cout << "Profiler Data Folder:" << getProfDir() << endl;
  } else {
    cerr << "Couldn't locate the profiler data directory" << endl;
  }
}

void AdvProfiler::gatherProfileData() {
  toolCL_report.push_back(vtune_path + "amplxe-cl" + space_str);
  toolCL_report.push_back("-R hotspots" + space_str);
  toolCL_report.push_back("-r" + space_str);
  toolCL_report.push_back(getProfDir() + space_str);
  toolCL_report.push_back("-format=csv --csv-delimiter=comma" + space_str);
  toolCL_report.push_back("-report-output=" + getProfDir() + ".csv");
  string CL;
  for (vector<string>::iterator iterv = toolCL_report.begin();
       iterv != toolCL_report.end(); iterv++)
    CL += *iterv;
  executeCommand(CL);
  if (!isFileExist(getProfDir() + ".csv"))
    cerr << "Couldn't generate the profiler result CSV" << endl;
}

void AdvProfiler::sanitizeProfileData() {
  bool is_reading_file = true;
  CSV csv_file_profiler(getProfDir() + ".csv");

  is_reading_file = false;
  CSV csv_file_counters(mCompiler_curr_dir_path +
                            mCompiler_adv_profile_data_csv,
                        is_reading_file);

  vector<string> func_data;
  while (csv_file_profiler.readNextRow()) {
    func_data                     = csv_file_profiler.getRowData();
    vector<string>::iterator iter = func_data.begin();
    string hotspot_name           = *iter;
    /* All dashes are converted to XunderscoreX in function name, recover them
     * to match loop file names */
    while (hotspot_name.find("X_X") != string::npos) {
      hotspot_name.replace(hotspot_name.find("X_X"), 3, "-");
    }
    for (map<string, string>::iterator mIter =
             hotspot_best_compiler_map.begin();
         mIter != hotspot_best_compiler_map.end(); mIter++) {
      string curr_hotspot = mIter->first;
      /* Underscore added before function with number at starting taken care of
       * automatically, since it a find for smaller string */
      if (hotspot_name.find(curr_hotspot) != string::npos) {
        csv_file_counters << curr_hotspot << mIter->second;
        for (; iter != func_data.end(); iter++)
          csv_file_counters << *iter;
        csv_file_counters << endrow;
      } // if
    }   // for map iter
  }     // while
}

AdvProfiler::AdvProfiler() {
  cout << "Advanced Profiling" << endl;
  if (mCompiler_mode == mode_FULL_PASS || mCompiler_mode == mode_TO_OBJECT ||
      mCompiler_mode == mode_COMPLEX) {
    addNoOptCompilerFlags(false);
    compileSource(); // Phase 1
  }
  if (mCompiler_mode == mode_FULL_PASS || mCompiler_mode == mode_FROM_OBJECT ||
      mCompiler_mode == mode_COMPLEX) {
    addNoOptCompilerFlags(true);
    linkObjs(); // Phase 2
    addProfileToolOptions();
    runProfileTool();
    gatherProfileData();
    sanitizeProfileData();
  }
}
