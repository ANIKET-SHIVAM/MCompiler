#include "common.h"

map< compiler_type, bool > compiler_candidate;

string executeCommand( string cmd_str ) {
	// Since, pipe doesn't capture stderr, redirect it to stdout
	cmd_str = cmd_str + " 2>&1";
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
	if( !result.empty() )
		cerr << "Result of the previous command:" << endl << result << endl;
	
    return result;
}

