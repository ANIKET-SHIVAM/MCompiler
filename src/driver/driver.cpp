#include "driver.h"

void Driver::createMCompilerDataFolder(){
	// TODO: If -o is provided, then data_folder at that location
	string pwd_result = executeCommand("pwd");
	// To skip last \n chracter
	pwd_result.pop_back();

	if( pwd_result.empty() ){
		cerr << "Driver: Cannot run command 'pwd'" << endl;
		exit(EXIT_FAILURE);
	}

	mCompiler_curr_dir_path    = pwd_result + forward_slash_str;
	mCompiler_data_folder_path = mCompiler_curr_dir_path + mCompiler_data_folder + forward_slash_str;
	
	if (!isDirExist(mCompiler_data_folder_path)) {
		const int dir_err = mkdir(mCompiler_data_folder_path.c_str(), S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
		if (dir_err == -1) {
			cout << "Error creating mCompiler data directory:" << mCompiler_data_folder_path << endl;
			exit(EXIT_FAILURE);
		}
	}
}

/* file_name is the relative path to the file to be extracted */
void Driver::initiateExtractor( string file_name ){
    if (FILE *file = fopen(file_name.c_str(), "r")) {
        fclose(file);
    } else {
		cerr << "The input file doesn't exist: " << file_name << endl;
		exit(EXIT_FAILURE);
    }   
	vector<string> filename_vec;
	string dummy_arg_for_extractor_frontend = "Rose, please let me run the extractor!";
	filename_vec.push_back(dummy_arg_for_extractor_frontend);
	filename_vec.push_back(file_name);
	extr = new Extractor( filename_vec );
	string base_file = extr->getDataFolderPath() + extr->getFileName() + base_str + "." + extr->getFileExtn();
	files_to_compile.insert(base_file);
	// Move base file to the mCompiler data folder: 
	// mv rose_filename.x mCompiler_data/filename_base.x
	executeCommand( "mv rose_"+ extr->getFileName() + "." + extr->getFileExtn() + space_str + base_file );
	// Keep record of all the mCompiler data folders to profile, combine, etc. -- probably wont need it.
	//addDataFolderPath( extr->getDataFolderPath() );	
}

void Driver::initiateProfiler( bool parallel){
	src_lang src_type = extr->getSrcType();
	if( src_type == src_lang_C ){
		prof = new ProfilerC( parallel );
	}else if( src_type == src_lang_C ){
		//ProfilerCPP( string data_folder_path );
	} else if( src_type == src_lang_FORTRAN ){
		//ProfilerFortran( string data_folder_path );
	} else {
		cerr << "Unknown source extention" << endl;
		exit(EXIT_FAILURE);
	}
}

void Driver::initiateSynthesizer( bool parallel){
	src_lang src_type = extr->getSrcType();
	if( src_type == src_lang_C ){
		synth = new SynthesizerC( parallel, 
								  getOutputBinary() );
	}else if( src_type == src_lang_C ){
		//SynthesizerCPP( string data_folder_path );
	} else if( src_type == src_lang_FORTRAN ){
		//SynthesizerFortran( string data_folder_path );
	} else {
		cerr << "Unknown source extention" << endl;
		exit(EXIT_FAILURE);
	}
}

int main( int argc, char* argv[] ){
	if( argc < 2 ){
		print_usage_options();
		exit(EXIT_FAILURE);
	}
	/* TODO: Clear the mCompiler data folder, if starting from beginning */
	string *files_and_flags = set_mCompiler_options( argc, argv );
	Driver *driver = new Driver();
	driver->setInputFile( files_and_flags[0] );
	driver->setOutputBinary( files_and_flags[1] );
	driver->setCompilerFlags( files_and_flags[2] );
	
	driver->createMCompilerDataFolder();

	if( mCompiler_enabled_options[option_extract] == true )
		driver->initiateExtractor( driver->getInputFile() );

	if( mCompiler_enabled_options[option_profile] == true ){
		if( mCompiler_data_folder_path.empty() ){
			cerr << "Couldn't find the folder to profile hotspots" << endl;	
			exit(EXIT_FAILURE);
		}
		driver->initiateProfiler( mCompiler_enabled_options[option_parallel] );
	}

	if( mCompiler_enabled_options[option_synthesize] == true ){
		if( mCompiler_data_folder_path.empty() ){
			cerr << "Couldn't find the folder to synthesize hotspots" << endl;	
			exit(EXIT_FAILURE);
		}	
		driver->initiateSynthesizer( mCompiler_enabled_options[option_parallel] );
	}

	delete driver;
	return 0;
}
