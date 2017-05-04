#ifndef SYNTHESIZERC_H_
#define SYNTHESIZERC_H_

#include "driver/common.h"

using namespace std;

/* Operator to order the hotspot set based on running time */
struct less_than_cmp_set{
    bool operator ()(const pair< string, double> &a, const pair<string, double> &b){
        return a.second < b.second;
	}
};

class SynthesizerC {
private:
	bool parallel;
	string binary_name;
	//set<string> candidate_binaries; -- task moved to Profiler
	multimap< pair<string,string>, double > hotspot_compiler_timing_map;
	map< pair<string,string>, string > hotspot_obj_file_map;
	set<string> best_objs_to_link;

public:
	SynthesizerC( bool parallel, const string& custom_binary_name );
	bool isParallelEnabled()   { return parallel; };
	string getDataFolderPath() { return mCompiler_data_folder_path; };

	//void findCandidateBinaries(); -- task moved to Profiler
	void analyzeHotspotProfileData();
	void selectOptimalOptimizedCandidate(string hotspot_name);
	void generateFinalBinary();
};
#endif