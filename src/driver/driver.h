#ifndef DRIVER_H_
#define DRIVER_H_

#include "common.h"
#include "options.h"
#include "extractor/extractor.h"
#include "profiler/profilerC.h"
#include "synthesizer/synthesizerC.h"
//#include "profiler/profilerCPP.h"
//#include "profiler/profilerFortan.h"

using namespace std;

class Driver {
	string compiler_flags;
	Extractor *extr;
	ProfilerC *prof;
	SynthesizerC *synth;
public:
	Driver() {};
	string getInputFile(){ return *(mCompiler_input_file.begin()); }
	void createMCompilerDataFolder();
	void initiateExtractor( string file_name );
	void initiateProfiler( bool parallel );
	void initiateSynthesizer( bool parallel );

};

#endif  
