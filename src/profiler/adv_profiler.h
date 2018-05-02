#ifndef ADV_PROFILER_H_
#define ADV_PROFILER_H_

#include "driver/common.h"

using namespace std;

class AdvProfiler { 
private:
  string adv_profile_str = "prof";
  vector<string> *compilerFlags = new vector<string>();
  vector<string> *toolFlags = new vector<string>();
	set<string> files_to_link;

  void addNoOptCompilerFlags();
  void addProfileToolOptions();
  void compileSource();
  void linkObjs();

public:
  AdvProfiler();
	string getDataFolderPath() { return mCompiler_data_folder_path; };

};
#endif
