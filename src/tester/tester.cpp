#include "tester.h"

void Tester::testCompilerCandidates() {
  map<compiler_type, bool>::iterator iter;
  for (iter = compiler_candidate.begin(); iter != compiler_candidate.end();
       iter++) {
    if (iter->first != compiler_Pluto && iter->second == true) {
      compiler_type curr_compiler = iter->first;
      vector<string> CL_flags     = optimization_flags[curr_compiler];
      vector<string>::iterator iterv;
      string CL;
      for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
        CL += *iterv + space_str;
      }

      for (iterv = MCompiler_input_file.begin();
           iterv != MCompiler_input_file.end(); iterv++) {
        CL += *iterv + space_str;
      }

      CL += MCompiler_macro_defs + MCompiler_link_path + MCompiler_libraries;
      string curr_binary = getDataFolderPath() + binary_name + test_str +
                           compiler_keyword[curr_compiler];
      CL += minus_o_str + space_str + curr_binary + " -lm ";

      string result_compilation = executeCommand(CL);
      if (result_compilation.find("error") != string::npos)
        exit(EXIT_FAILURE);

      CL.clear();
      CL = "time " + curr_binary;
      string result_execution =
          executeCommand(CL + space_str + MCompiler_profiler_input);

      stringstream line_stream(result_execution);
      string cell;
      // TODO: Improve this later
      while (getline(line_stream, cell)) {
        if (cell.find("user") != string::npos) {
          int pos_system  = cell.find("system");
          int pos_elapsed = cell.find("elapsed");
          binaries_time[curr_compiler] =
              cell.substr(pos_system + string("system").length() + 1,
                          string("h:mm.ss").length());
        }
      }
    }
  }
  // Get MCompiler generated binary timing
  string CL = "time " + MCompiler_curr_dir_path + MCompiler_binary_name;
  string result_execution = executeCommand(CL);

  stringstream line_stream(result_execution);
  string cell;
  while (getline(line_stream, cell)) {
    if (cell.find("user") != string::npos) {
      int pos_system   = cell.find("system");
      int pos_elapsed  = cell.find("elapsed");
      MCompiler_timing = cell.substr(pos_system + string("system").length() + 1,
                                     string("h:mm.ss").length());
    }
  }
}

void Tester::printCompilerTimings() {
  cout << "Running time comparision: " << endl;
  map<compiler_type, bool>::iterator iter;
  for (iter = compiler_candidate.begin(); iter != compiler_candidate.end();
       iter++) {
    if (iter->first != compiler_Pluto && iter->second == true) {
      cout << compiler_keyword[iter->first] << " -> "
           << binaries_time[iter->first] << endl;
    }
  }
  if (!MCompiler_timing.empty())
    cout << "MCompiler -> " << MCompiler_timing << endl;
}

Tester::Tester() {

  binary_name = MCompiler_binary_name;

  testCompilerCandidates();
  printCompilerTimings();
}
