#ifndef TESTER_H_
#define TESTER_H_

#include "driver/common.h"

using namespace std;

class Tester {
private:
	bool parallel;
	string binary_name;
	string mCompiler_timing;
	map< compiler_type, string > binaries_time;
	map< compiler_type, string > compiler_keyword;
public:
	Tester( bool parallel );
	bool isParallelEnabled()   { return parallel; };
	string getDataFolderPath() { return mCompiler_data_folder_path; };
	
	void testCompilerCandidates();
	void printCompilerTimings();	
};
#endif
