#ifndef SYNTHESIZERC_H_
#define SYNTHESIZERC_H_

#include "driver/common.h"
//#include "csv.h"

using namespace std;

class SynthesizerC {
private:
	string data_folder_path;
	bool parallel;
	string binary_name;
	set<string> candidate_binaries;


public:
	SynthesizerC( const string& input_data_folder_path, bool parallel,
				  const string& custom_binary_name );
	string getDataFolderPath() { return data_folder_path; };
	bool isParallelEnabled()   { return parallel; };

	void findCandidateBinaries();
	void collectHotspotProfileData();
	void selectOptimalOptimizedCandidate();
	void generateFinalBinary();
};
#endif
