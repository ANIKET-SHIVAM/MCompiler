#ifndef ENERGY_PROFILER_H_
#define ENERGY_PROFILER_H_

#include "driver/common.h"

using namespace std;

class EnergyProfiler {
private:
  string energy_profile_str = "energyprof";
  vector<string> compilerCL;
  vector<string> toolCL_collect;
  vector<string> toolCL_report;
  string prof_binary = "";

  void setProfBinary(const string &str) { prof_binary = str; };
  string getProfBinary() { return prof_binary; };
  void setProfDir(const string &str) { MCompiler_adv_profile_dir = str; };
  string getProfDir() { return MCompiler_adv_profile_dir; };
  void addProfileToolOptions();
  void EnergyProfile(const map<compiler_type, bool>::iterator &curr_candidate);
  void gatherProfilingData(const string &binary_file,
                           compiler_type curr_compiler);
  void sanitizeProfileData(const string &result, compiler_type curr_compiler,
                           int run_id, set<string> &covered_hotspots);

public:
  EnergyProfiler();
  string getDataFolderPath() { return MCompiler_data_folder_path; };
};
#endif
