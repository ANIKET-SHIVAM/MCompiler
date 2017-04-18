#include "driver.h"

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
	filename_vec.push_back(file_name);
	filename_vec.push_back(file_name);
	extr = new Extractor( filename_vec );
	// Move base file to the mCompiler data folder
	executeCommand( "mv rose_"+ extr->getFileName() + "." + extr->getFileExtn() +
		" " + extr->getDataFolderPath() + "/" + extr->getFileName() + "_base" +
		"." + extr->getFileExtn() );
	// Keep record of all the mCompiler data folders to profile, combine, etc.
	addDataFolderPath( extr->getDataFolderPath() );	
}

void Driver::initiateProfiler( string data_folder_path ){
	src_lang src_type = extr->getSrcType();
	if( src_type == src_lang_C ){
		prof = new ProfilerC( data_folder_path );
	}else if( src_type == src_lang_C ){
		//ProfilerCPP( string data_folder_path );
	} else if( src_type == src_lang_FORTRAN ){
		//ProfilerFortran( string data_folder_path );
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
	string *files_and_flags = set_mCompiler_options( argc, argv );
	Driver driver;
	driver.setInputFile( files_and_flags[0] );
	driver.setOutputBinary( files_and_flags[1] );
	driver.setCompilerFlags( files_and_flags[2] );
	if( mCompiler_enabled_options[option_extract] == true )
		driver.initiateExtractor( driver.getInputFile() );
	if( mCompiler_enabled_options[option_profile] == true ){
		if( ( ( driver.getLastDataFolderPath() ).empty() ) ){
			cerr << "Couldn't find the folder to profile hotspots" << endl;	
			exit(EXIT_FAILURE);
		}	
		driver.initiateProfiler( driver.getLastDataFolderPath() );
	}
	return 0;
}
