#ifndef DRIVER_H_
#define DRIVER_H_

#include "common.h"
#include "options.h"
#include "extractor/extractor.h"
#include "profiler/profilerC.h"
//#include "profiler/profilerCPP.h"
//#include "profiler/profilerFortan.h"

using namespace std;

class Driver {
	string input_file; 
	/* Input file can be different formats depending on the phase you want to execute */
	string output_binary;
	/* Output file useful if Combiner is being executed */
	string compiler_flags;
	vector<string> mCompiler_datafolder_paths;
	Extractor *extr;
	ProfilerC *prof;
public:
	Driver() {};
	void setInputFile( string str ) { input_file = str; };
	void setOutputBinary( string str ) { output_binary = str; };
	void setCompilerFlags( string str ) { compiler_flags = str; };
	void addDataFolderPath( string str ) 
		{ mCompiler_datafolder_paths.push_back( str ); };
	string getLastDataFolderPath() 
		{ return mCompiler_datafolder_paths.back(); };
	string getInputFile() { return input_file; };
	string getOuputBinary() { return output_binary; };
	string getCompilerFlags() { return compiler_flags; };
	
	void initiateExtractor( string file_name );
	void initiateProfiler( string data_folder_path, bool parallel );

};

#endif  
