#include "power_profiler.h"
/*
Performs following task:
-Collects power/energy consumption stats for hotspots using LIKWID
*/

void PowerProfiler::addProfileToolOptions() {
  toolCL_collect.push_back("likwid-perfctr" + space_str);
  toolCL_collect.push_back("-C 0 -g ENERGY -m" + space_str);
}

void PowerProfiler::gatherProfilingData(const string &binary_file,
                                        compiler_type curr_compiler) {
  // CSV file open for storing profiler data
  bool is_reading_file = false;
  CSV csv_file(mCompiler_curr_dir_path + mCompiler_power_profile_data_csv,
               is_reading_file);

  string compiler_str = compiler_keyword[curr_compiler];

  /* Check if binary file is present at all */
  if (!isFileExist(binary_file)) {
    cerr << "Profiler: Following binary file doesn't exist: " << binary_file
         << endl;
    profile_binary_err_cnt++;
    return;
  }

  string CL;
  for (vector<string>::iterator iterv = toolCL_collect.begin();
       iterv != toolCL_collect.end(); iterv++)
    CL += *iterv;
  CL += binary_file + space_str;
  CL += mCompiler_profiler_input;

  cout << "Power Profiler: " << compiler_str << endl;
  string result;
  result = executeCommand(CL);

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
    int keyword_pos = cell.find(mCompiler_timing_keyword);
    if (keyword_pos == string::npos)
      continue;
    int keyword_colon_pos = keyword_pos + mCompiler_timing_keyword.length();
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

    csv_file << hotspot_name << compiler_str // <<
        ;
    csv_file << endrow;
  }
}

void PowerProfiler::sanitizeProfileData() {
  bool is_reading_file = true;
  CSV csv_file_profiler(getProfDir() + ".csv", is_reading_file);

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

void PowerProfiler::PowerProfile(
    const map<compiler_type, bool>::iterator &curr_candidate) {
  if (curr_candidate->second == true) {
    string out_file = getDataFolderPath() + mCompiler_binary_name + "_" +
                      compiler_keyword[curr_candidate->first];
    gatherProfilingData(out_file, curr_candidate->first);
  }
}

PowerProfiler::PowerProfiler() {
  cout << "Power Profiling" << endl;
  if (mCompiler_mode == mode_FULL_PASS || mCompiler_mode == mode_FROM_OBJECT ||
      mCompiler_mode == mode_COMPLEX) {
    addProfileToolOptions();
    /* Rotate through compiler candidates for profile */
    map<compiler_type, bool>::iterator iter;
    for (iter = compiler_candidate.begin(); iter != compiler_candidate.end();
         iter++) {
      PowerProfile(iter);
    }
    sanitizeProfileData();
  } // if
} // Constructor
