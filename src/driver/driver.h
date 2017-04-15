#ifndef DRIVER_H_
#define DRIVER_H_

#include <cstdio>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>

#include "extractor/extractor.h"
#include "options.h"

using namespace std;

class Driver {
	string input_file; 
	/* Input file can be different formats depending on the phase you want to execute */
	string output_binary;
	/* Only useful if Combiner is being executed */
	string compiler_flags;
	Extractor *extr;
public:
	Driver() {};
	void setInputFile( string str ) { input_file = str; };
	void setOutputBinary( string str ) { output_binary = str; };
	void setCompilerFlags( string str ) { compiler_flags = str; };
	string getInputFile() { return input_file; };
	string getOuputBinary() { return output_binary; };
	string getCompilerFlags() { return compiler_flags; };
	
	void initiateExtractor( string file_name );
	void initiateProfiler();
	string executeCommand( string cmd_str );

};

#endif  
