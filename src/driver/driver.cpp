#include "driver.h"

/* file_name is the relative path to the file to be extracted */
void Driver::initiateExtractor( string file_name ){
	vector<string> filename_vec;
	string dummy_arg_for_extractor_frontend = "Rose, please let me run the extractor!";
	filename_vec.push_back(file_name);
	filename_vec.push_back(file_name);
	extr = new Extractor( filename_vec );
	executeCommand( "mv rose_"+ extr->getFileName() + "." + extr->getFileExtn() +
		 " " + extr->getDataFolderPath() );
}

string Driver::executeCommand( string cmd_str ) {
	const char *cmd_char_ptr = cmd_str.c_str();
	array<char, 128> buffer;
    string result;

	cerr << "Executing command:" << endl << cmd_str << endl;
    shared_ptr<FILE> pipe(popen(cmd_char_ptr, "r"), pclose);

    if (!pipe) throw runtime_error("popen() while executing command failed!");

    while (!feof(pipe.get())) {
        if (fgets(buffer.data(), 128, pipe.get()) != NULL)
            result += buffer.data();
    }
	cerr << "Result of the previous command:" << endl << result << endl;
	
    return result;
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
	return 0;
}
