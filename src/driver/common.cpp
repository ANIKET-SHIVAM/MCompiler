#include "common.h"

map< compiler_type, bool > compiler_candidate;
map< compiler_type, vector<string> > optimization_flags;
map< compiler_type, vector<string> > linker_flags;

string space_str         = " ";
string forward_slash_str = "/";
string minus_c_str = "-c";
string minus_o_str = "-o";
string dot_o_str   = ".o";
string base_str    = "_base";
string icc_str     = "_icc";
string gcc_str     = "_gcc";
string llvm_str    = "_llvm";
string pgi_str     = "_pgi";
string pluto_str   = "_pluto";
string polly_str   = "_polly";

string profile_data_csv = "profile_data.csv";

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

// TODO: Add flags given to driver to following flag list (without or with mapping)
void addOptimizationFlags(){
	/* ICC */
	vector<string> flag_vec;
	flag_vec.push_back("icc");
	flag_vec.push_back("-Ofast");
	flag_vec.push_back("-xhost");
	flag_vec.push_back("-qopenmp");
	flag_vec.push_back("-w");
	optimization_flags[compiler_ICC] = flag_vec;	

}

void addLinkerFlags(){
	/* ICC */
	vector<string> flag_vec;
	flag_vec.push_back("icc");
	flag_vec.push_back("-qopenmp");
	flag_vec.push_back("-w");
	linker_flags[compiler_ICC] = flag_vec;	

}

bool isEndingWith( string const &fullString, string const &ending ){
    if( fullString.length() >= ending.length() )
		return ( fullString.compare( fullString.length() - ending.length(), ending.length(), ending ) == 0 );
    else 
        return false;
}

bool isEndingWithCompilerName( string const &fullString ){
	if( 
		fullString.compare( fullString.length() - icc_str.length(), icc_str.length(), icc_str ) == 0 ||
		fullString.compare( fullString.length() - gcc_str.length(), gcc_str.length(), gcc_str ) == 0 ||
		fullString.compare( fullString.length() - pgi_str.length(), pgi_str.length(), pgi_str ) == 0 ||
		fullString.compare( fullString.length() - llvm_str.length(), llvm_str.length(), llvm_str ) == 0 ||
		fullString.compare( fullString.length() - pluto_str.length(), pluto_str.length(), pluto_str ) == 0 ||
		fullString.compare( fullString.length() - polly_str.length(), polly_str.length(), polly_str ) == 0 ){
		return true;
    } else {
        return false;
	}
}
