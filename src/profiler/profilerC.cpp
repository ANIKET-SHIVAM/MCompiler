#include "profilerC.h"

/*
 * Phase 1 of profiler: Compile all .c files to .o,
 * with available compilers and with appropriate flags (serial/parallel).
 */
// Function only used if Extractor is used seperately
void ProfilerC::getHotspotFiles() {
  DIR *dir;
  struct dirent *ent;
  if ((dir = opendir((getDataFolderPath()).c_str())) != NULL) {
    /* print all the files and directories within directory */
    while ((ent = readdir(dir)) != NULL) {
      string filename(ent->d_name);
      if (filename.at(0) != '.' && isEndingWith(filename, ".c")) {
        files_to_compile.insert(getDataFolderPath() + ent->d_name);
        if (MCompiler_enabled_options[MC_INFO])
          cout << "Adding files for compiling: " << ent->d_name << endl;
      }
    }
    closedir(dir);
  } else {
    /* could not open directory */
    cerr << "Profiler: Couldn't open data folder: " << getDataFolderPath()
         << endl;
    exit(EXIT_FAILURE);
  }
}

// TODO: Check if compilation command failed in optimize functions
void ProfilerC::iccOptimize(bool asPlutoBackend) {
  files_to_link.clear();
  vector<string> CL_flags = optimization_flags[compiler_ICC];
  vector<string>::iterator iterv;
  string CL;
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }
  if (asPlutoBackend && MCompiler_enabled_options[AUTO_PARALLEL])
    CL.erase(CL.find("-parallel"), 9);
  // Since we only want to generate .o at this point
  CL += minus_c_str + space_str;

  /* If compiling PLuTo optimized files or just simple ICC */
  set<string> files_compile = set<string>();
  string compiler_str;
  if (!asPlutoBackend) {
    files_compile.insert(files_to_compile.begin(), files_to_compile.end());
    compiler_str = compiler_keyword[compiler_ICC];
  } else {
    files_compile.insert(pluto_files_to_compile->begin(),
                         pluto_files_to_compile->end());
    compiler_str = compiler_keyword[compiler_Pluto];
  }

  set<string>::iterator iters;
  for (iters = files_compile.begin(); iters != files_compile.end(); iters++) {
    string out_file = "";
    if (!asPlutoBackend) {
      out_file = (*iters).substr(0, (*iters).find_last_of(".")) + compiler_str +
                 dot_o_str;
    } else {
      /* _pluto is added for pluto optimized file already, if pluto couldn't
       * then same source compiled just by ICC */
      if ((*iters).find(compiler_str) == string::npos)
        out_file = (*iters).substr(0, (*iters).find_last_of(".")) +
                   XplutoX_str + dot_o_str;
      else
        out_file = (*iters).substr(0, (*iters).find_last_of(".")) + dot_o_str;
    }
    executeCommand(CL + *iters + space_str + minus_o_str + space_str +
                   out_file);
    /* We only want to link profile code files (and MCompiler file with
     * printTimingVar function), but compile no profile code files too */
    if (out_file.find(MCompiler_profile_file_tag) != string::npos)
      files_to_link.insert(out_file);
    // Add MCompiler header obj for linking but collect name so as to be skipped
    // by synthesizer
    if ((*iters).find(MCompiler_header_code_name) != string::npos) {
      files_to_link.insert(out_file);
      MCompiler_header_obj.insert(out_file);
    }
    // Store base obj file for synthesizer
    if ((*iters).find(base_str) != string::npos &&
        out_file.find(MCompiler_profile_file_tag) == string::npos) {
      if (base_obj_path.find(compiler_str) == base_obj_path.end()) {
        vector<string> *temp_vec = new vector<string>();
        base_obj_path.insert(
            pair<string, vector<string> *>(compiler_str, temp_vec));
      }
      map<string, vector<string> *>::iterator mIter =
          base_obj_path.find(compiler_str);
      (mIter->second)->push_back(out_file);
    }
  }
}

void ProfilerC::gccOptimize() {
  files_to_link.clear();
  vector<string> CL_flags = optimization_flags[compiler_GCC];
  vector<string>::iterator iterv;
  string CL;
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  // Since we only want to generate .o at this point
  CL += minus_c_str + space_str;

  set<string>::iterator iters;
  for (iters = files_to_compile.begin(); iters != files_to_compile.end();
       iters++) {
    string out_file = (*iters).substr(0, (*iters).find_last_of(".")) +
                      compiler_keyword[compiler_GCC] + dot_o_str;
    executeCommand(CL + *iters + space_str + minus_o_str + space_str +
                   out_file);
    if (out_file.find(MCompiler_profile_file_tag) != string::npos)
      files_to_link.insert(out_file);
    if ((*iters).find(MCompiler_header_code_name) != string::npos) {
      files_to_link.insert(out_file);
      MCompiler_header_obj.insert(out_file);
    }
    // Store base obj file for synthesizer
    if ((*iters).find(base_str) != string::npos &&
        out_file.find(MCompiler_profile_file_tag) == string::npos) {
      if (base_obj_path.find(compiler_keyword[compiler_GCC]) ==
          base_obj_path.end()) {
        vector<string> *temp_vec = new vector<string>();
        base_obj_path.insert(pair<string, vector<string> *>(
            compiler_keyword[compiler_GCC], temp_vec));
      }
      map<string, vector<string> *>::iterator mIter =
          base_obj_path.find(compiler_keyword[compiler_GCC]);
      (mIter->second)->push_back(out_file);
    }
  }
}

void ProfilerC::llvmOptimize(bool withPollyPlugin) {
  files_to_link.clear();

  string compiler_str;
  compiler_type compiler_in_action;
  /* If using Polly as optimizer+vectorizer */
  if (!withPollyPlugin) {
    compiler_in_action = compiler_LLVM;
    compiler_str       = compiler_keyword[compiler_LLVM];
  } else {
    compiler_in_action = compiler_Polly;
    compiler_str       = compiler_keyword[compiler_Polly];
  }

  vector<string> CL_flags = optimization_flags[compiler_in_action];
  vector<string>::iterator iterv;
  string CL;
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  // Since we only want to generate .o at this point
  CL += minus_c_str + space_str;

  set<string>::iterator iters;
  for (iters = files_to_compile.begin(); iters != files_to_compile.end();
       iters++) {
    string out_file = (*iters).substr(0, (*iters).find_last_of(".")) +
                      compiler_str + dot_o_str;
    executeCommand(CL + *iters + space_str + minus_o_str + space_str +
                   out_file);
    if (out_file.find(MCompiler_profile_file_tag) != string::npos)
      files_to_link.insert(out_file);
    if ((*iters).find(MCompiler_header_code_name) != string::npos) {
      files_to_link.insert(out_file);
      MCompiler_header_obj.insert(out_file);
    }
    // Store base obj file for synthesizer
    if ((*iters).find(base_str) != string::npos &&
        out_file.find(MCompiler_profile_file_tag) == string::npos) {
      if (base_obj_path.find(compiler_str) == base_obj_path.end()) {
        vector<string> *temp_vec = new vector<string>();
        base_obj_path.insert(
            pair<string, vector<string> *>(compiler_str, temp_vec));
      }
      map<string, vector<string> *>::iterator mIter =
          base_obj_path.find(compiler_str);
      (mIter->second)->push_back(out_file);
    }
  }
}

void ProfilerC::pgiOptimize() {
  files_to_link.clear();
  vector<string> CL_flags = optimization_flags[compiler_PGI];
  vector<string>::iterator iterv;
  string CL;
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  // Since we only want to generate .o at this point
  CL += minus_c_str + space_str;

  set<string>::iterator iters;
  for (iters = files_to_compile.begin(); iters != files_to_compile.end();
       iters++) {
    string out_file = (*iters).substr(0, (*iters).find_last_of(".")) +
                      compiler_keyword[compiler_PGI] + dot_o_str;
    executeCommand(CL + *iters + space_str + minus_o_str + space_str +
                   out_file);
    if (out_file.find(MCompiler_profile_file_tag) != string::npos)
      files_to_link.insert(out_file);
    if ((*iters).find(MCompiler_header_code_name) != string::npos) {
      files_to_link.insert(out_file);
      MCompiler_header_obj.insert(out_file);
    }
    // Store base obj file for synthesizer
    if ((*iters).find(base_str) != string::npos &&
        out_file.find(MCompiler_profile_file_tag) == string::npos) {
      if (base_obj_path.find(compiler_keyword[compiler_PGI]) ==
          base_obj_path.end()) {
        vector<string> *temp_vec = new vector<string>();
        base_obj_path.insert(pair<string, vector<string> *>(
            compiler_keyword[compiler_PGI], temp_vec));
      }
      map<string, vector<string> *>::iterator mIter =
          base_obj_path.find(compiler_keyword[compiler_PGI]);
      (mIter->second)->push_back(out_file);
    }
  }
}

void ProfilerC::plutoOptimize() {
  vector<string> CL_flags = optimization_flags[compiler_Pluto];
  vector<string>::iterator iterv;
  string CL;
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  set<string>::iterator iters;
  for (iters = files_to_compile.begin(); iters != files_to_compile.end();
       iters++) {
    string file_to_optimize = *iters;
    // If a base file just skip
    if (file_to_optimize.find(base_str) != string::npos) {
      pluto_files_to_compile->insert(file_to_optimize);
      continue;
    }
    // If a skippluto file just skip
    if (files_skip_pluto.find(file_to_optimize) != files_skip_pluto.end()) {
      pluto_files_to_compile->insert(file_to_optimize);
      continue;
    }
    // filename.c to filename_pluto.c
    int pos_of_dot        = file_to_optimize.find_last_of(".");
    string pluto_opt_file = file_to_optimize.substr(0, pos_of_dot) +
                            compiler_keyword[compiler_Pluto] +
                            file_to_optimize.substr(pos_of_dot, string::npos);
    string result = executeCommand(CL + file_to_optimize + space_str +
                                   minus_o_str + space_str + pluto_opt_file);
    /* If PLuTo was able to optimze it i.e. it was a SCoP,
     *	then choose pluto file else keep original */
    if (result.find(pluto_success_str) != string::npos) {
      pluto_files_to_compile->insert(pluto_opt_file);
      /* Pluto bug workaround: Removes omp.h if parallel option not given :O */
      string sed_command = string("sed -i 's/") + "#include <math.h>" + "/" +
                           "#include <math.h>\\\n#include <omp.h>" + "/' " +
                           pluto_opt_file;
      executeCommand(sed_command);
    } else {
      pluto_files_to_compile->insert(file_to_optimize);
    }
  }
  // Run iccOptimize as PLuTo backend
  iccOptimize(true);
}

void ProfilerC::pollyOptimize() {
  // Run llvmOptimize with Polly plugin
  llvmOptimize(true);
}

void ProfilerC::Optimize(compiler_type curr_candidate, bool curr_cand_status) {
  bool asPlutoBackend  = false;
  bool withPollyPlugin = false;

  if (curr_cand_status == true) {
    switch (curr_candidate) {
    case compiler_ICC:
      iccOptimize(asPlutoBackend);
      break;
    case compiler_GCC:
      gccOptimize();
      break;
    case compiler_LLVM:
      llvmOptimize(withPollyPlugin);
      break;
    case compiler_PGI:
      pgiOptimize();
      break;
    case compiler_Pluto:
      plutoOptimize();
      break;
    case compiler_Polly:
      pollyOptimize();
      break;
    }
  }
}

/*
 * Phase 2 of profiler: Collect all .o from same compiler,
 * link to create an executable and run multiple times,
 * put timing data for each loop in the profile_data_map & .csv file for
 * synthesizer to use.
 */
void ProfilerC::getObjectFiles(const string &compiler_str) {
  DIR *dir;
  struct dirent *ent;
  /* If in Complex mode, then also fetch from dir */
  files_to_link.clear();

  set<string> filename_keyword;
  for (auto const &str : MCompiler_object_file) {
    int lastSlashPos = str.find_last_of('/');
    int lastDotPos   = str.find_last_of('.');
    filename_keyword.insert(
        str.substr(lastSlashPos + 1, lastDotPos - lastSlashPos - 1));
  }
  for (auto const &str : MCompiler_input_file) {
    int lastSlashPos = str.find_last_of('/');
    int lastDotPos   = str.find_last_of('.');
    filename_keyword.insert(
        str.substr(lastSlashPos + 1, lastDotPos - lastSlashPos - 1));
  }

  string MCompiler_header_str = MCompiler_header_code_name.substr(
      0, MCompiler_header_code_name.find_last_of('.'));
  if ((dir = opendir((getDataFolderPath()).c_str())) != NULL) {
    /* print all the files and directories within directory */
    while ((ent = readdir(dir)) != NULL) {
      string filename(ent->d_name);
      bool valid_file_link = false;
      for (auto const &str : filename_keyword) {
        if (filename.find(str + "_") == 0 ||
            filename.find(MCompiler_header_str) == 0) {
          valid_file_link = true;
          break;
        }
      }
      if (!valid_file_link)
        continue;
      if (filename.at(0) != '.' &&
          filename.find(compiler_str) != string::npos &&
          filename.find(MCompiler_profile_file_tag) != string::npos &&
          isEndingWith(filename, dot_o_str)) {
        files_to_link.insert(getDataFolderPath() + ent->d_name);
        if (MCompiler_enabled_options[MC_INFO])
          cout << "Adding files for Linking: " << ent->d_name << endl;
      }
      if (filename.at(0) != '.' &&
          filename.find(compiler_str) != string::npos &&
          filename.find(MCompiler_header_str) != string::npos &&
          isEndingWith(filename, dot_o_str)) {
        files_to_link.insert(getDataFolderPath() + ent->d_name);
        if (MCompiler_enabled_options[MC_INFO])
          cout << "Adding files for Linking: " << ent->d_name << endl;
      }
      // Store base obj file for synthesizer
      if (filename.find(base_str) != string::npos &&
          filename.find(compiler_str) != string::npos &&
          filename.find(MCompiler_profile_file_tag) == string::npos) {
        if (base_obj_path.find(compiler_str) == base_obj_path.end()) {
          vector<string> *temp_vec = new vector<string>();
          base_obj_path.insert(
              pair<string, vector<string> *>(compiler_str, temp_vec));
        }
        map<string, vector<string> *>::iterator mIter =
            base_obj_path.find(compiler_str);
        (mIter->second)->push_back(getDataFolderPath() + filename);
      }
    }
    closedir(dir);
  } else {
    /* could not open directory */
    cerr << "Couldn't open data folder: " << getDataFolderPath() << endl;
    exit(EXIT_FAILURE);
  }
}

void ProfilerC::gatherProfilingData(const string &binary_file,
                                    compiler_type curr_compiler) {
  // CSV file open for storing profiler data
  bool is_reading_file = false;
  CSV csv_file(MCompiler_curr_dir_path + MCompiler_profile_data_csv,
               is_reading_file);

  string compiler_str = compiler_keyword[curr_compiler];

  /* Check if binary file is present at all */
  if (!isFileExist(binary_file)) {
    cerr << "Profiler: Following binary file doesn't exist: " << binary_file
         << endl;
    profile_binary_err_cnt++;
    return;
  }

  set<string> covered_hotspots;
  if (baseline_compiler_str == compiler_str) {
    /* Just in case for some reason its occupied */
    hotspots_skipped_profiling.clear();
  }

  for (int i = 0; i < MCompiler_profiler_runs; i++) {
    cout << "Profiler: " << compiler_str << " -> Run " << (i + 1) << endl;
    string result;
    result = executeCommand(binary_file + space_str + MCompiler_profiler_input);

    /* If runtime error occurs, abort execution */
    if (result.find("error") != string::npos ||
        result.find("Segmentation fault") != string::npos) {
      cout << "Profiler: Binary couldn't execute: " << compiler_str << endl
           << result;
    }

    /* Store result of execution(loops and their running time) */
    stringstream line_stream(result);
    string cell;
    while (getline(line_stream, cell)) {
      int keyword_pos = cell.find(MCompiler_timing_keyword);
      if (keyword_pos == string::npos)
        continue;
      int keyword_colon_pos = keyword_pos + MCompiler_timing_keyword.length();
      string hotspot_name   = cell.substr(0, keyword_pos);
      /* If hotspot name starts with a number, extractor adds a underscore at
         the beginning of the function name,
         but not in the filename */
      if (hotspot_name.substr(0, 1) == "_")
        hotspot_name = hotspot_name.substr(1, string::npos);
      /* All dashes are converted to XunderscoreX in function name, recover them
       * to match loop file names */
      while (hotspot_name.find("X_X") != string::npos) {
        hotspot_name.replace(hotspot_name.find("X_X"), 3, "-");
      }
      double hotspot_time = stod(cell.substr(keyword_colon_pos + 1));
      /* For hotspots that are Pluto couldn't optimize and used ICC's instead */
      if (curr_compiler == compiler_Pluto &&
          pluto_fail_hotspots->find(hotspot_name) != pluto_fail_hotspots->end())
        continue;

      // Check if that loop's profile object file is present
      string obj_file_path_profile = getDataFolderPath() + hotspot_name +
                                     MCompiler_profile_file_tag + compiler_str +
                                     dot_o_str;
      // This is the file with no profiling code, hence to be finally linked by
      // the synthesizer
      string obj_file_path =
          getDataFolderPath() + hotspot_name + compiler_str + dot_o_str;

      set<string>::iterator iter = files_to_link.find(obj_file_path_profile);

      if (iter == files_to_link.end()) {
        /* Loop name might be in MCompiler.h from previous step compilations */
        cerr << "Profiler: Loop's object file not found: "
             << obj_file_path_profile << endl;
        continue;
      }

      // There's no point of adding it for each run
      if (i == 0 && baseline_compiler_str == compiler_str)
        covered_hotspots.insert(*iter);

      pair<string, string> data_key = make_pair(hotspot_name, compiler_str);
      // If such hotspot timing vector doesn't exist, create entry and add empty
      // vector
      if (profiler_hotspot_data.find(data_key) == profiler_hotspot_data.end()) {
        vector<double> *temp_vec = new vector<double>();
        hotspot_name_set.insert(hotspot_name);
        // Add timing vector for each hotspot and its location( for the no
        // profile code version ) into correspoing maps
        profiler_hotspot_data.insert(
            pair<pair<string, string>, vector<double> *>(data_key, temp_vec));
        profiler_hotspot_obj_path.insert(
            pair<pair<string, string>, string>(data_key, obj_file_path));
      }

      map<pair<string, string>, vector<double> *>::iterator mIter =
          profiler_hotspot_data.find(data_key);
      (mIter->second)->push_back(hotspot_time);

      /* Dump same data in CSV file for reference */
      csv_file << hotspot_name << compiler_str << to_string(hotspot_time)
               << *iter;
      csv_file << endrow;
    }
  }
  // Link left over obj files that had hotspot not being executed during
  // profiling
  if (baseline_compiler_str == compiler_str) {
    set<string>::iterator iter;
    for (iter = files_to_link.begin(); iter != files_to_link.end(); iter++) {
      if (covered_hotspots.find(*iter) == covered_hotspots.end()) {
        // Skip MCompiler header obj and base files for synthesizer
        if (MCompiler_header_obj.find(*iter) == MCompiler_header_obj.end() &&
            (*iter).find(base_str) == string::npos)
          hotspots_skipped_profiling.insert(*iter);
      }
    }
  }
}

void ProfilerC::iccProfile(bool asPlutoBackend) {
  string CL;

  /* For CC and other flags */
  vector<string>::iterator iterv;
  vector<string> CL_flags = linker_flags[compiler_ICC];
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  string compiler_str;
  compiler_type curr_compiler;
  if (!asPlutoBackend) {
    compiler_str  = icc_str;
    curr_compiler = compiler_ICC;
  } else {
    compiler_str  = pluto_str;
    curr_compiler = compiler_Pluto;
  }

  /* For gathering object files */
  set<string>::iterator iters;
  string object_files;
  string out_file = getDataFolderPath() + MCompiler_binary_name + compiler_str;
  for (iters = files_to_link.begin(); iters != files_to_link.end(); iters++) {
    if (asPlutoBackend && (*iters).find(XplutoX_str) != string::npos) {
      string hotspot_name = *iters;
      hotspot_name.erase(0, getDataFolderPath().length());
      int pos = hotspot_name.find(MCompiler_profile_file_tag);
      pluto_fail_hotspots->insert(hotspot_name.substr(0, pos));
    }
    object_files += *iters + space_str;
  }
  /* Add object files then add -o binary_name, before adding post linker flags
   */
  CL +=
      object_files + space_str + minus_o_str + space_str + out_file + space_str;

  /* For flags that go at the end of the command line */
  vector<string> post_CL_flags = post_linker_flags[compiler_ICC];
  for (iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  /* Link object files together to form the executable for profiling */
  executeCommand(CL);

  /* Send binary for profiling and storing profiling data */
  gatherProfilingData(out_file, curr_compiler);
}

void ProfilerC::gccProfile() {
  string CL;

  vector<string>::iterator iterv;
  vector<string> CL_flags = linker_flags[compiler_GCC];
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  set<string>::iterator iters;
  string object_files;
  string out_file = getDataFolderPath() + MCompiler_binary_name + gcc_str;
  for (iters = files_to_link.begin(); iters != files_to_link.end(); iters++) {
    object_files += *iters + space_str;
  }

  CL +=
      object_files + space_str + minus_o_str + space_str + out_file + space_str;

  vector<string> post_CL_flags = post_linker_flags[compiler_GCC];
  for (iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  executeCommand(CL);

  /* Send binary for profiling and storing profiling data */
  gatherProfilingData(out_file, compiler_GCC);
}

void ProfilerC::llvmProfile(bool withPollyPlugin) {

  string compiler_str;
  compiler_type compiler_in_action;
  /* If using Polly as optimizer+vectorizer */
  if (!withPollyPlugin) {
    compiler_in_action = compiler_LLVM;
    compiler_str       = llvm_str;
  } else {
    compiler_in_action = compiler_Polly;
    compiler_str       = polly_str;
  }

  /* Since Linker flags for Polly are same as LLVM */
  string CL;
  vector<string>::iterator iterv;
  vector<string> CL_flags = linker_flags[compiler_LLVM];
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  set<string>::iterator iters;
  string object_files;
  string out_file = getDataFolderPath() + MCompiler_binary_name + compiler_str;
  for (iters = files_to_link.begin(); iters != files_to_link.end(); iters++) {
    object_files += *iters + space_str;
  }

  CL +=
      object_files + space_str + minus_o_str + space_str + out_file + space_str;

  vector<string> post_CL_flags = post_linker_flags[compiler_LLVM];
  for (iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  executeCommand(CL);

  /* Send binary for profiling and storing profiling data */
  gatherProfilingData(out_file, compiler_in_action);
}

void ProfilerC::pgiProfile() {
  string CL;

  vector<string>::iterator iterv;
  vector<string> CL_flags = linker_flags[compiler_PGI];
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  set<string>::iterator iters;
  string object_files;
  string out_file = getDataFolderPath() + MCompiler_binary_name + pgi_str;
  for (iters = files_to_link.begin(); iters != files_to_link.end(); iters++) {
    object_files += *iters + space_str;
  }

  CL +=
      object_files + space_str + minus_o_str + space_str + out_file + space_str;

  vector<string> post_CL_flags = post_linker_flags[compiler_PGI];
  for (iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  executeCommand(CL);

  /* Send binary for profiling and storing profiling data */
  gatherProfilingData(out_file, compiler_PGI);
}

void ProfilerC::plutoProfile() {
  // Run iccProfile as PLuTo backend
  iccProfile(true);
}

void ProfilerC::pollyProfile() {
  // Run as Polly's linker
  llvmProfile(true);
}

void ProfilerC::Profile(
    const map<compiler_type, bool>::iterator &curr_candidate) {
  // getHotspotFiles(); -- Only if Extractor is called separately
  bool asPlutoBackend  = false;
  bool withPollyPlugin = false;
  if (curr_candidate->second == true) {
    /* Fetch .o from MCompiler data dir */
    getObjectFiles(compiler_keyword[curr_candidate->first]);

    switch (curr_candidate->first) {
    case compiler_ICC:
      iccProfile(asPlutoBackend);
      break;
    case compiler_GCC:
      gccProfile();
      break;
    case compiler_LLVM:
      llvmProfile(withPollyPlugin);
      break;
    case compiler_PGI:
      pgiProfile();
      break;
    case compiler_Pluto:
      plutoProfile();
      break;
    case compiler_Polly:
      pollyProfile();
      break;
    }
  }
}

/* Constructor */
ProfilerC::ProfilerC() {
  if (MCompiler_mode == mode_FULL_PASS || MCompiler_mode == mode_TO_OBJECT ||
      MCompiler_mode == mode_COMPLEX) {
    if (!MCompiler_enabled_options[JOBS]) {
      /* Rotate through compiler candidates for optimize */
      map<compiler_type, bool>::iterator iter;
      for (iter = compiler_candidate.begin(); iter != compiler_candidate.end();
           iter++) {
        Optimize(iter->first, iter->second); // Phase 1
      }
    } else {
      /* If parallel compilation enabled */
      vector<thread> threadpool;
      map<compiler_type, bool>::iterator iter;
      for (iter = compiler_candidate.begin(); iter != compiler_candidate.end();
           iter++) {
        threadpool.push_back(thread(&ProfilerC::Optimize, this, iter->first,
                                    iter->second)); // Phase 1
      }
      vector<thread>::iterator t_iter;
      for (t_iter = threadpool.begin(); t_iter != threadpool.end(); t_iter++) {
        thread &curr_thread = const_cast<thread &>(*t_iter);
        curr_thread.join();
      }
    }
  }
  /* If making prediction, then skip timed profile runs */
  if ((MCompiler_mode == mode_FULL_PASS || MCompiler_mode == mode_FROM_OBJECT ||
       MCompiler_mode == mode_COMPLEX) &&
      !MCompiler_enabled_options[PREDICT]) {
    /* Rotate through compiler candidates for profile */
    map<compiler_type, bool>::iterator iter;
    for (iter = compiler_candidate.begin(); iter != compiler_candidate.end();
         iter++) {
      Profile(iter); // Phase 2
    }
    if (profile_binary_err_cnt > 2) {
      cerr << "Fatal error: Generating enough binaries for profiling." << endl;
      exit(EXIT_FAILURE);
    }
  }
}
