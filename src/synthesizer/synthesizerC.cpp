#include "synthesizerC.h"

void SynthesizerC::findCandidateBinaries(){
	DIR *dir;
	struct dirent *ent;
	if ( ( dir = opendir( ( getDataFolderPath() ).c_str() ) ) != NULL) {
		/* print all the files and directories within directory */
		while ( ( ent = readdir(dir) ) != NULL ){
			string filename( ent->d_name );
			if( filename.at(0) != '.' && isEndingWithCompilerName(filename) ){
				candidate_binaries.insert( getDataFolderPath() +forward_slash_str+ ent->d_name );
				cout << "Adding Candidate Binary: " << ent->d_name << endl;
			}
		}
		closedir (dir);
	} else {
		/* could not open directory */
		cerr << "Couldn't open data folder: " << getDataFolderPath() << endl;
		exit(EXIT_FAILURE);
	}
}

SynthesizerC::SynthesizerC( const string& input_data_folder_path, bool parallel_enabled,
							const string& custom_binary_name ){
	data_folder_path = input_data_folder_path;
	parallel = parallel_enabled;
	if( custom_binary_name.empty() )
		binary_name = data_folder_path.substr( data_folder_path.find_last_of( forward_slash_str ) );
	else
		binary_name = custom_binary_name;


}
