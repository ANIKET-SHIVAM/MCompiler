#include "energy_profiler.h"
/*
Performs following task:
-Collects power/energy consumption stats for hotspots using LIKWID
*/

void EnergyProfiler::addProfileToolOptions() {
  toolCL_collect.push_back(MCompiler_energyprofiler_str + space_str);
  toolCL_collect.push_back("-C 0" + space_str); // Pin process to core 0
  toolCL_collect.push_back("-g ENERGY" +
                           space_str); // Measure energy using MSR registers
  toolCL_collect.push_back(
      "-O" + space_str); // Print output in easily parseable format
  toolCL_collect.push_back("-m" +
                           space_str); // Use Marker APIs in the code regions
}

void EnergyProfiler::gatherProfilingData(const string &binary_file,
                                        compiler_type curr_compiler) {
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
  CL += MCompiler_profiler_input;

  cout << "Energy Profiler: " << compiler_str << endl;
  string result;
  result = executeCommand(CL);

  /* If runtime error occurs, abort execution */
  if (result.find("error") != string::npos ||
      result.find("Segmentation fault") != string::npos) {
    cout << "Profiler: Binary couldn't execute: " << compiler_str << endl
         << result;
  }

  sanitizeProfileData(result, compiler_str);
}

void EnergyProfiler::sanitizeProfileData(const string &result,
                                        const string &compiler_str) {
  // CSV file open for storing profiler data
  bool is_reading_file = false;
  CSV csv_file(MCompiler_curr_dir_path + MCompiler_energy_profile_data_csv,
               is_reading_file);

  stringstream line_stream(result);
  string cell;
  string keyword_region1("Region");
  string keyword_region2("Group 1 Metric,ENERGY");
  string keyword_runtime("Runtime (RDTSC) [s]");
  string keyword_CPI("CPI");
  string keyword_energy("Energy [J]");
  string keyword_power("Power [W]");
  string keyword_energy_dram("Energy DRAM [J]");
  string keyword_power_dram("Power DRAM [W]");
  while (getline(line_stream, cell)) {
    int keyword_region1_pos = cell.find(keyword_region1);
    int keyword_region2_pos =
        cell.find(keyword_region2); // Skip Raw data for regions
    if (keyword_region1_pos != string::npos &&
        keyword_region2_pos != string::npos) {
      // Format: ",Region <hotspot name>,Group 1 Metric,ENERGY"
      int hotspot_pos = keyword_region1_pos + keyword_region1.length() + 1;
      string hotspot_name =
          cell.substr(hotspot_pos, keyword_region2_pos - 1 - hotspot_pos);
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
      csv_file << hotspot_name << compiler_str;
      // To parse the region stats
      while (getline(line_stream, cell)) {
        cell.pop_back(); // remove the comma at the end
        if (cell.find(keyword_runtime) != string::npos)
          csv_file << cell.substr(keyword_runtime.length() + 1);
        else if (cell.find(keyword_CPI) != string::npos)
          csv_file << cell.substr(keyword_CPI.length() + 1);
        else if (cell.find(keyword_energy) != string::npos)
          csv_file << cell.substr(keyword_energy.length() + 1);
        else if (cell.find(keyword_power) != string::npos)
          csv_file << cell.substr(keyword_power.length() + 1);
        else if (cell.find(keyword_energy_dram) != string::npos)
          csv_file << cell.substr(keyword_energy_dram.length() + 1);
        else if (cell.find(keyword_power_dram) != string::npos) {
          csv_file << cell.substr(keyword_power_dram.length() + 1);
          break; // This is the last stat for a region
        }
      } // while
      csv_file << endrow;
    } // if
  }   // while
}

void EnergyProfiler::EnergyProfile(
    const map<compiler_type, bool>::iterator &curr_candidate) {
  if (curr_candidate->second == true) {
    string out_file = getDataFolderPath() + MCompiler_binary_name + "_" +
                      compiler_keyword[curr_candidate->first];
    gatherProfilingData(out_file, curr_candidate->first);
  }
}

EnergyProfiler::EnergyProfiler() {
  cout << "Energy Profiling" << endl;
  if (MCompiler_mode == mode_FULL_PASS || MCompiler_mode == mode_FROM_OBJECT ||
      MCompiler_mode == mode_COMPLEX) {
    addProfileToolOptions();
    /* Rotate through compiler candidates for profile */
    map<compiler_type, bool>::iterator iter;
    for (iter = compiler_candidate.begin(); iter != compiler_candidate.end();
         iter++) {
      EnergyProfile(iter);
    }
  } // if
} // Constructor
