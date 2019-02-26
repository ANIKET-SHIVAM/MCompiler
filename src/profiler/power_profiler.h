#ifndef POWER_PROFILER_H_
#define POWER_PROFILER_H_

#include "driver/common.h"

using namespace std;

class PowerProfiler {
private:
  string power_profile_str = "powerprof";
  vector<string> compilerCL;
  vector<string> toolCL_collect;
  vector<string> toolCL_report;
  set<string> files_to_link;
  string prof_binary              = "";
  string vtune_default_dir_naming = "r@@@runAT";

  void setProfBinary(const string &str) { prof_binary = str; };
  string getProfBinary() { return prof_binary; };
  void setProfDir(const string &str) { mCompiler_adv_profile_dir = str; };
  string getProfDir() { return mCompiler_adv_profile_dir; };
  void addProfileToolOptions();
  void PowerProfile(const map<compiler_type, bool>::iterator &curr_candidate);
  void gatherProfilingData(const string &binary_file,
                           compiler_type curr_compiler);
  void sanitizeProfileData();

public:
  PowerProfiler();
  string getDataFolderPath() { return mCompiler_data_folder_path; };
};
#endif
