#ifndef PROFILERC_H_
#define PROFILERC_H_

#include "driver/common.h"

using namespace std;

class ProfilerC { 
private:
	string data_folder_path;
	bool parallel;
	set<string> files_to_compile;
	set<string> files_to_link;

	void iccOptimize(); 
	void gccOptimize(); 
	void llvmOptimize(); 
	void pgiOptimize();
	void plutoOptimize(); 
	void pollyOptimize(); 

	void iccProfile(); 
	void gccProfile(); 
	void llvmProfile(); 
	void pgiProfile();
	void plutoProfile(); 
	void pollyProfile(); 

public:
	ProfilerC( const string& input_data_folder_path, bool parallel );
	string getDataFolderPath() { return data_folder_path; };
	bool isParallelEnabled()   { return parallel; };
	void checkCompilerCandidates();

	// Phase 1
	void Optimize();
	void getHotspotFiles();

	// Phase 2
	void Profile();
	void getObjectFiles();
	void linkFiles();
	void gatherProfilingData( const string& binary_file );
	
};

#endif
