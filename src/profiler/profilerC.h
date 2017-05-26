#ifndef PROFILERC_H_
#define PROFILERC_H_

#include "driver/common.h"

using namespace std;

class ProfilerC { 
private:
	string data_folder_path;
	bool parallel;
	set<string> files_to_link;
	set<string> mCompiler_header_obj;
	set<string> *pluto_files_to_compile = new set<string>();
	string pluto_success_str = "[Pluto] Output written";	

	void iccOptimize( bool asPlutoBackend ); 
	void gccOptimize(); 
	void llvmOptimize( bool withPollyPlugin ); 
	void pgiOptimize();
	void plutoOptimize(); 
	void pollyOptimize(); 

	void iccProfile( bool asPlutoBackend ); 
	void gccProfile(); 
	void llvmProfile( bool withPollyPlugin ); 
	void pgiProfile();
	void plutoProfile(); 
	void pollyProfile(); 

public:
	ProfilerC( bool parallel_enabled );
	string getDataFolderPath() { return mCompiler_data_folder_path; };
	bool isParallelEnabled()   { return parallel; };

	// Phase 1
	void Optimize( const map< compiler_type, bool >::iterator &curr_candidate );
	void getHotspotFiles();

	// Phase 2
	void Profile( const map< compiler_type, bool >::iterator &curr_candidate );
	void independentProfile();
	void getObjectFiles( const string& compiler_str ); 
	/* getObjectFiles-Only needed if mCompiler started at Profiling phase */ 
	void linkFiles();
	void gatherProfilingData( const string& binary_file, compiler_type curr_compiler );
	
};

#endif
