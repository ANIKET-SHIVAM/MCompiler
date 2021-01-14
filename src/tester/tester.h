#ifndef TESTER_H_
#define TESTER_H_

#include "driver/common.h"

using namespace std;

class Tester {
private:
  string binary_name;
  string MCompiler_timing;
  map<compiler_type, string> binaries_time;

public:
  Tester();
  string getDataFolderPath() { return MCompiler_data_folder_path; };

  void testCompilerCandidates();
  void printCompilerTimings();
};
#endif
