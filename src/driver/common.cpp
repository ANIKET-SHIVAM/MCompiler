#include "common.h"

map< mCompiler_options, bool > mCompiler_enabled_options;
map< compiler_type, bool > compiler_candidate;
map< compiler_type, vector<string> > optimization_flags;
map< compiler_type, vector<string> > linker_flags;
map< compiler_type, vector<string> > post_linker_flags;


/* Profiler to Synthesizer */
set<string> hotspot_name_set;
/* map< compiler_string, base file obj location > */
map<string, vector<string>* > base_obj_path;
/* map< pair<hotspot_name, compiler_string>, timing/obj_location > */
map< pair< string, string >, vector<double>* > profiler_hotspot_data;
map< pair< string, string >, string > profiler_hotspot_obj_path;
set<string> hotspots_skipped_profiling;

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
string test_str    = "_test";

map<compiler_type, string> compiler_keyword = {
	{ compiler_ICC,   icc_str.substr(1,string::npos)   },
	{ compiler_GCC,   gcc_str.substr(1,string::npos)   },
	{ compiler_LLVM,  llvm_str.substr(1,string::npos)  },
	{ compiler_PGI,   pgi_str.substr(1,string::npos)   },
	{ compiler_Pluto, pluto_str.substr(1,string::npos) },
	{ compiler_Polly, polly_str.substr(1,string::npos) },
};	

/* Set baseline compiler to come from CL */
string baseline_compiler_str;

/* Mode in which mCompiler is working */
compiler_mode mCompiler_mode = mode_FULL_PASS;

/* Used by extractor to differentiate from other stdout */
string mCompiler_timing_keyword = "_mCompilerInfo:";

/* Each run of mCompiler will have a unique str associated to it */
string mCompiler_unique_str = "";

string printTimingVarFuncName     = "printAccumulatedTimes";
string loopTimingVarSuffix        = "accumulatorTime_";
string mCompiler_profile_file_tag = "_mCProfile_";
string mCompiler_header_name      = "mCompiler.h";
string mCompiler_header_code_name = "mCompiler.c";
string mCompiler_data_folder      = "mCompiler_data";
string mCompiler_data_folder_path;
string mCompiler_curr_dir_path;
string pgi_lib_path               = "/opt/pgi/linux86-64/17.10/lib/";

/*** Parameter that change based on the CL input ***/
/* For the extractor */
vector<string> mCompiler_input_file = vector<string>();
vector<string> mCompiler_object_file;
string mCompiler_binary_name       = "a_mc.out"; //Default: If CL provided then replaced with that name
/* Extractor passes to Profiler */
set<string> files_to_compile;
int    mCompiler_profiler_runs     = 3; //Default: If CL provided then replaced with that number
string mCompiler_profile_data_csv  = "profile_data.csv";
string mCompiler_profiler_input    = "";
string mCompiler_macro_defs        = "";
string mCompiler_include_path      = "";
string mCompiler_link_path         = "";
string mCompiler_libraries         = "";
string mCompiler_extraPreSrcFlags  = "";
string mCompiler_extraPostSrcFlags = "";

/*** END: Parameter that change based on the CL input ***/

// TODO: Add flags given to driver to following flag list (without or with mapping)
// Called inside Profiler
void addOptimizationFlags(){
	vector<string> flag_vec;
	/* ICC */
	flag_vec.clear();
	flag_vec.push_back("icc");
	flag_vec.push_back("-Ofast");
	flag_vec.push_back("-xHost");
	flag_vec.push_back("-qopenmp");
	flag_vec.push_back("-std=c11");
	flag_vec.push_back("-ipo");
	flag_vec.push_back("-qopt-prefetch");
	flag_vec.push_back("-m64");
	flag_vec.push_back("-w");
  if(mCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-parallel");
	flag_vec.push_back(mCompiler_include_path);
	flag_vec.push_back(mCompiler_macro_defs);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	flag_vec.push_back(mCompiler_extraPostSrcFlags);
	optimization_flags[compiler_ICC] = flag_vec;

	/* GCC */
	flag_vec.clear();
	flag_vec.push_back("gcc");
	flag_vec.push_back("-Ofast");
	flag_vec.push_back("-march=native");
	flag_vec.push_back("-fopenmp");
	flag_vec.push_back("-std=c11");
//	flag_vec.push_back("-flto"); Require plugin needed for lto object
	flag_vec.push_back("-fprefetch-loop-arrays");
	flag_vec.push_back("-m64");
	flag_vec.push_back("-w");
  if(mCompiler_enabled_options[PARALLEL])
    ;//flag_vec.push_back("-parallel");
	flag_vec.push_back(mCompiler_include_path);
	flag_vec.push_back(mCompiler_macro_defs);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	flag_vec.push_back(mCompiler_extraPostSrcFlags);
	optimization_flags[compiler_GCC] = flag_vec;	

	/* LLVM */
	flag_vec.clear();
	flag_vec.push_back("clang");
	flag_vec.push_back("-Ofast");
	flag_vec.push_back("-march=native");
	flag_vec.push_back("-fopenmp");
	flag_vec.push_back("-std=c11");
//	flag_vec.push_back("-flto"); Requires LLVMGold binaries
	flag_vec.push_back("-loop-data-prefetch");
	flag_vec.push_back("-m64");
	flag_vec.push_back("-w");
  if(mCompiler_enabled_options[PARALLEL])
    ;//flag_vec.push_back("-parallel");
	flag_vec.push_back(mCompiler_include_path);
	flag_vec.push_back(mCompiler_macro_defs);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	flag_vec.push_back(mCompiler_extraPostSrcFlags);
	optimization_flags[compiler_LLVM] = flag_vec;	

	/* PGI */
	flag_vec.clear();
	flag_vec.push_back("pgcc");
	flag_vec.push_back("-fast");
	flag_vec.push_back("-tp=haswell");
	flag_vec.push_back("-mp");
  flag_vec.push_back("-c11");
	flag_vec.push_back("-Mipa");
	flag_vec.push_back("-Mprefetch");
	flag_vec.push_back("-Mprefetch");
	flag_vec.push_back("-m64");
	flag_vec.push_back("-w");
  if(mCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-Mconcur");
	flag_vec.push_back(mCompiler_include_path);
	flag_vec.push_back(mCompiler_macro_defs);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	flag_vec.push_back(mCompiler_extraPostSrcFlags);
	optimization_flags[compiler_PGI] = flag_vec;	
	
	/* PLuTo */
	flag_vec.clear();
	/* Tiling and parallel code option are off by default */
	flag_vec.push_back("polycc");
	optimization_flags[compiler_Pluto] = flag_vec;	

	/* Polly */
	flag_vec.clear();
	flag_vec.push_back("clang");
	flag_vec.push_back("-O3");
	flag_vec.push_back("-mllvm -polly");
	flag_vec.push_back("-mllvm -polly-vectorizer=stripmine");
	flag_vec.push_back("-march=native");
	flag_vec.push_back("-fopenmp");
	flag_vec.push_back("-std=c11");
  if(mCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-mllvm -polly-parallel");
//	flag_vec.push_back("-flto"); Requires LLVMGold binaries
	flag_vec.push_back("-loop-data-prefetch");
	flag_vec.push_back("-m64");
	flag_vec.push_back("-w");
	flag_vec.push_back(mCompiler_include_path);
	flag_vec.push_back(mCompiler_macro_defs);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	flag_vec.push_back(mCompiler_extraPostSrcFlags);
	optimization_flags[compiler_Polly] = flag_vec;	
	
}

// Called inside Profiler
void addLinkerFlags(){
	vector<string> flag_vec;
	/* ICC */
	flag_vec.clear();
	flag_vec.push_back("icc");
	flag_vec.push_back("-qopenmp");
	flag_vec.push_back("-ipo");
	flag_vec.push_back("-w");
  if(mCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-parallel");
	flag_vec.push_back(mCompiler_link_path);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	linker_flags[compiler_ICC] = flag_vec;	

	/* GCC */
	flag_vec.clear();
	flag_vec.push_back("gcc");
	flag_vec.push_back("-fopenmp");
//	flag_vec.push_back("-flto"); Require plugin needed for lto object
	flag_vec.push_back("-w");
  if(mCompiler_enabled_options[PARALLEL])
    ;//flag_vec.push_back("-parallel");
	flag_vec.push_back(mCompiler_link_path);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	linker_flags[compiler_GCC] = flag_vec;	
	
	/* LLVM */
	flag_vec.clear();
	flag_vec.push_back("clang");
	flag_vec.push_back("-fopenmp");
//	flag_vec.push_back("-flto"); Requires LLVMGold binaries
	flag_vec.push_back("-w");
  /* For Polly Parallel */
  if(mCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-lgomp");
	flag_vec.push_back(mCompiler_link_path);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	linker_flags[compiler_LLVM] = flag_vec;	

	/* PGI */
	flag_vec.clear();
	flag_vec.push_back("pgcc");
	flag_vec.push_back("-Mipa");
	flag_vec.push_back("-mp");
	flag_vec.push_back("-w");
  if(mCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-Mconcur");
	flag_vec.push_back(mCompiler_link_path);
	flag_vec.push_back(mCompiler_extraPreSrcFlags);
	linker_flags[compiler_PGI] = flag_vec;	
}

/* For flags that go at the end of the CL */
void addPostLinkerFlags(){
	vector<string> flag_vec;
	flag_vec.clear();
	flag_vec.push_back("-lm");
	flag_vec.push_back(mCompiler_libraries);
	flag_vec.push_back(mCompiler_extraPostSrcFlags);
	post_linker_flags[compiler_ICC] = flag_vec;	
	post_linker_flags[compiler_GCC] = flag_vec;	
	post_linker_flags[compiler_LLVM] = flag_vec;	
	post_linker_flags[compiler_PGI] = flag_vec;	
}

string executeCommand( string cmd_str ){
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
	if( !result.empty() ){
		cerr << "Result of the previous command:" << endl << result << endl;
		//if( result.find("error") == string::npos )
		//	exit(EXIT_FAILURE);
	}

    return result;
}

bool isDirExist( const string &path ){
	struct stat info;
	if( stat(path.c_str(), &info) != 0 )
		return false;
	else if( info.st_mode & S_IFDIR )
		return true;
	else 
		return false; 
}

bool isFileExist( const string &filename ){
  struct stat info;   
  return (stat (filename.c_str(), &info) == 0); 
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

double getVectorMean( vector<double>* dataVec ){
	double sum = accumulate(dataVec->begin(), dataVec->end(), 0.0);
	double mean = sum / dataVec->size();
	return mean;
}

double getVectorStdev( vector<double>* dataVec ){
	double mean = getVectorMean( dataVec );
	vector<double> diff(dataVec->size());
	transform(dataVec->begin(), dataVec->end(), diff.begin(), [mean](double x) { return x - mean; });
	double sq_sum = inner_product(diff.begin(), diff.end(), diff.begin(), 0.0);
	double stdev = sqrt(sq_sum / dataVec->size());
	return stdev;
}

double getVectorMedian( vector<double>* dataVec ){
	sort( dataVec->begin(), dataVec->end() );
	if ( dataVec->size()%2 == 0 ) 
	{
	  return ( dataVec->at( ( dataVec->size()/2 ) - 1) + dataVec->at(dataVec->size()/2) )/2.0;
	} 
	return dataVec->at( dataVec->size() / 2 );
}

void genRandomStr( string &str, const int len ){
	static const char alphanum[] =
		"0123456789"
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        "abcdefghijklmnopqrstuvwxyz";

    for( int i = 0; i < len; ++i ){
        str += alphanum[ rand() % (sizeof(alphanum) - 1) ];
    }
}

string getAbsolutePath( string const &fullString ){
	string result = executeCommand("realpath " + fullString);
	// To remove \n at the end
	result.pop_back();
	if( result.find("No such file or directory") == string::npos ){
		return result;
	} else {
		cerr << "Driver: Incorrect Path -> " << fullString << endl;
		exit(EXIT_FAILURE);
	}
}
