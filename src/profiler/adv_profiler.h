#ifndef ADV_PROFILER_H_
#define ADV_PROFILER_H_

#include "driver/common.h"

using namespace std;

class AdvProfiler { 
private:
  vector<string> compilerFlags;
  vector<string> toolFlags;

  void addNoOptCompilerFlags();
  void addProfileToolOptions();

public:
  AdvProfiler();

};
#endif
