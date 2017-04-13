#include "driver.h"

/* file_name is the relative path to the file to be extracted */
void Driver::initiateExtractor( string file_name ){
	vector<string> filename_vec;
	string dummy_arg_for_extractor_frontend = "Rose, please let me run the extractor!";
	filename_vec.push_back(file_name);
	filename_vec.push_back(file_name);
	extr = new Extractor( filename_vec );
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
	Driver driver;
	string file_for_extraction = "examples/test3/testing.c";
	driver.initiateExtractor( file_for_extraction );
	string temp(argv[1]);
	string cmd_out = driver.executeCommand( temp );
	return 0;
}
