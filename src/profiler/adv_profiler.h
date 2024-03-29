#ifndef ADV_PROFILER_H_
#define ADV_PROFILER_H_

#include "driver/common.h"

using namespace std;

class AdvProfiler {
private:
  string adv_profile_str = "prof";
  vector<string> compilerCL;
  vector<string> toolCL_collect;
  vector<string> toolCL_report;
  set<string> files_to_link;
  string prof_binary              = "";
  string vtune_default_dir_naming = "r@@@runAT";

  void setProfBinary(const string &str) { prof_binary = str; };
  string getProfBinary() { return prof_binary; };
  void setProfDir(const string &str) { MCompiler_adv_profile_dir = str; };
  string getProfDir() { return MCompiler_adv_profile_dir; };
  void addNoOptCompilerFlags(bool link_phase);
  void addProfileToolOptions();
  void compileSource();
  void linkObjs();
  void runProfileTool();
  void gatherProfileData();
  void sanitizeProfileData();

public:
  AdvProfiler();
  string getDataFolderPath() { return MCompiler_data_folder_path; };
};
#endif
