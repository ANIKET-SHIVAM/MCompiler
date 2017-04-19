#ifndef PROFILERC_H_
#define PROFILERC_H_

#include "driver/common.h"

using namespace std;

class ProfilerC { 
private:
	string data_folder_path;
	bool parallel;
	set<string> files_to_compile;
	void iccOptimize(); 
	void gccOptimize(); 
	void llvmOptimize(); 
	void pgiOptimize();
	void plutoOptimize(); 
	void pollyOptimize(); 

public:
	ProfilerC( const string& input_data_folder_path, bool parallel );
	string getDataFolderPath() { return data_folder_path; };
	bool isParallelEnabled()   { return parallel; };
	void checkCompilerCandidates();
	void Optimize();
	void getHotspotFiles();
	
};

#endif
