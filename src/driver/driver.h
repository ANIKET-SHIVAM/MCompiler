#ifndef DRIVER_H_
#define DRIVER_H_

#include "common.h"
#include "extractor/extractor.h"
#include "options.h"
#include "predictor/predictor.h"
#include "profiler/adv_profiler.h"
#include "profiler/power_profiler.h"
#include "profiler/profilerC.h"
#include "synthesizer/synthesizerC.h"
#include "tester/tester.h"
//#include "profiler/profilerCPP.h"
//#include "profiler/profilerFortan.h"

using namespace std;

class Driver {
  string compiler_flags;
  vector<string> *loop_funcName_vec = new vector<string>;
  ofstream header_file_buf;
  ofstream header_code_file_buf;
  src_lang src_type;

  Extractor *extr;
  ProfilerC *prof;
  AdvProfiler *adv_prof;
  PowerProfiler *power_prof;
  Predictor *predictor;
  SynthesizerC *synth;

public:
  bool mainFuncPresent = false;
  bool isLastSrcFile   = false;

public:
  Driver(){};
  string getLoopTimingVarSuffix() { return loopTimingVarSuffix; };
  src_lang getSrcType() { return src_type; }
  string getDataFolderPath() { return MCompiler_data_folder_path; };
  void checkCompilerCandidates();
  bool checkAdvProfileCandidate();
  bool checkPowerProfileCandidate();
  void setMCompilerMode();
  void getPathsToUtils();
  void createMCompilerDataFolder();
  void removeMCompilerDataFolder();
  void moveMCompilerDataFolder();
  void generateMCompilerHeaderFile();
  void fetchProfilerInput();
  void copyInFolderHeaders(string folder_path, bool copysourcefiles);
  void initiateExtractor(string file_name);
  void initiateProfiler();
  void initiateAdvProfiler();
  void initiatePowerProfiler();
  void initiatePredictor();
  void initiateSynthesizer();
};

#endif
