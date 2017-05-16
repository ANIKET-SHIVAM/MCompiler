#ifndef OPTIONS_H
#define OPTIONS_H

#include "common.h"
#include "optionparser.h"

struct Arg: public option::Arg{
	static void printError(const char* msg1, const option::Option& opt, const char* msg2){ 
		fprintf(stderr, "%s", msg1);
		fwrite(opt.name, opt.namelen, 1, stderr);
		fprintf(stderr, "%s", msg2);
	}
	static option::ArgStatus Unknown(const option::Option& option, bool msg){ 
		if (msg) printError("Unknown option '", option, "'\n");
			return option::ARG_ILLEGAL;
	}
	static option::ArgStatus Required(const option::Option& option, bool msg){ 
		if (option.arg != 0)
			return option::ARG_OK;
		if (msg) printError("Option '", option, "' requires an argument\n");
		return option::ARG_ILLEGAL;
	}
	static option::ArgStatus Numeric(const option::Option& option, bool msg){
		char* endptr = 0;
		if (option.arg != 0 && strtol(option.arg, &endptr, 10)){};
		if (endptr != option.arg && *endptr == 0)
			return option::ARG_OK; 
		if (msg) printError("Option '", option, "' requires a numeric argument\n");
			return option::ARG_ILLEGAL;
	}
};


typedef enum{ EXTRACT, PROFILE, SYNTHESIZE, TEST, REPORT, PARALLEL,
			  PROFILE_COUNT, INPUT_PROFILE, OUTPUT_BINARY, OUTPUT_OBJECT,
			  INCLUDE_PATH, LINKER_PATH, LIBS_PATH, MACRO_DEFS,
			  HELP, UNKNOWN 
			} mCompiler_options;

map< mCompiler_options, bool > mCompiler_enabled_options;

const option::Descriptor usage[] =
{
	{UNKNOWN            , 0, ""  , ""              ,Arg::None     , "Usage:  mCompiler <input.c> [options] [-o output]\nOptions:" },
	{HELP               , 0, "h" , "help"          ,Arg::None     , "    -h,--help            Print usage" },
	{EXTRACT            , 0, ""  , "noextract"     ,Arg::None     , "    --[no]extract        Extract hotspots" },
	{PROFILE            , 0, ""  , "noprofile"     ,Arg::None     , "    --[no]profile        Profile extracted hotspots" },
	{SYNTHESIZE         , 0, ""  , "nosynthesize"  ,Arg::None     , "    --[no]synthesize     Combine best performing hotspots to generate binary" },
	{TEST               , 0, ""  , "test"          ,Arg::None     , "    --test               Test performance compared to a single compiler"
																							  "optimized code" },
	{REPORT             , 0, ""  , "report"        ,Arg::None     , "    --report             Generate mCompiler performance report" },
	{PARALLEL           , 0, ""  , "parallel"      ,Arg::None     , "    --parallel           Auto-parallelize the hotspots."
																							  "Default: Serial code generation (with vectorization)" },
	{PROFILE_COUNT      , 0, ""  , "profile-runs"  ,Arg::Numeric  , "    --profile-runs=<num> Number of time profiler should run the program to"
																							  "collect data. Default: 3" },
	{INPUT_PROFILE      , 0, ""  , "input"         ,Arg::Required , "    --input=<args>       Input to the program."
																							  "Needed to generate profiling information" },
	{OUTPUT_BINARY      , 0, "o" , "output"        ,Arg::Required , "    -o[<arg>]            Output binary name" },
	{INCLUDE_PATH       , 0, "I" , "include"       ,Arg::Required , "    -I[<arg>]            Directory to include file search path" },
	{LINKER_PATH        , 0, "L" , "link"          ,Arg::Required , "    -L[<arg>]            Directory to search for libraries" },
	{LIBS_PATH          , 0, "l" , "libs"          ,Arg::Required , "    -l[<arg>]            Instruct the linker to link in the -l<string> library" },
	{MACRO_DEFS         , 0, "D" , "DEFS"          ,Arg::Required , "    -D[<arg>]            Macro definition" },
	{0,0,0,0,0,0}
};

void set_mCompiler_options( int argc, char* argv[] ){
	mCompiler_enabled_options = {
		{ EXTRACT,    true  },
		{ PROFILE,    true  },
		{ SYNTHESIZE, true  },
		{ TEST,       false },
		{ REPORT,     false },
		{ PARALLEL,   false },
	};
	argc-=(argc>0); argv+=(argc>0); // skip program name argv[0] if present
	option::Stats stats(usage, argc, argv);

	#ifdef __GNUC__
	// GCC supports C99 VLAs for C++ with proper constructor calls.
	option::Option options[stats.options_max], buffer[stats.buffer_max];
	#else
	option::Option* options = (option::Option*)calloc(stats.options_max, sizeof(option::Option));
	option::Option* buffer  = (option::Option*)calloc(stats.buffer_max,  sizeof(option::Option));
	#endif

	option::Parser parse(true, usage, argc, argv, options, buffer);

	if (parse.error()){
		cout << "Invalid command line option" << endl;
		exit(EXIT_FAILURE);
	}

	if (options[HELP] || argc == 0){
		int columns = getenv("COLUMNS")? atoi(getenv("COLUMNS")) : 120;
		option::printUsage(fwrite, stdout, usage, columns);
		exit(EXIT_FAILURE);
	}

	for (int i = 0; i < parse.optionsCount(); ++i){
		option::Option& opt = buffer[i];
		switch (opt.index()){
		case EXTRACT:
			mCompiler_enabled_options[EXTRACT] = false;
			mCompiler_enabled_options[PROFILE] = false;
			mCompiler_enabled_options[SYNTHESIZE] = false;
			break;
		case PROFILE:
			mCompiler_enabled_options[PROFILE] = false;
			mCompiler_enabled_options[SYNTHESIZE] = false;
			break;
		case SYNTHESIZE:
			mCompiler_enabled_options[SYNTHESIZE] = false;
			fprintf(stdout, "--numeric with argument '%s'\n", opt.arg);
			break;
		case TEST:
			mCompiler_enabled_options[TEST]     = true;
			break;
		case REPORT:
			mCompiler_enabled_options[REPORT]   = true;
			break;
		case PARALLEL:
			mCompiler_enabled_options[PARALLEL] = true;
			break;
		case PROFILE_COUNT:
			mCompiler_profiler_runs = atoi(opt.arg);
			break;
		case INPUT_PROFILE:
			mCompiler_profiler_input = opt.arg;
			break;
		case OUTPUT_BINARY:
			mCompiler_binary_name = opt.arg;
			break;
		case INCLUDE_PATH:
			mCompiler_include_path += space_str + "-I" + mCompiler_curr_dir_path + string(opt.arg) + space_str;
			break;
		case LINKER_PATH:
			mCompiler_link_path += space_str + "-L" + mCompiler_curr_dir_path + string(opt.arg) + space_str;
			break;
		case LIBS_PATH:
			mCompiler_libraries += space_str + "-l" + string(opt.arg) + space_str;
			break;
		case MACRO_DEFS:
			mCompiler_macro_defs += space_str + "-D" + string(opt.arg) + space_str;
			break;
		}
	}
	
	bool postSourceFlags = false;
	
	for (int i = 0; i < parse.nonOptionsCount(); ++i){
		string str = parse.nonOption(i);
		if( isEndingWith( str,".c" ) || isEndingWith( str,".cc" ) || isEndingWith( str,".cpp" ) || 
			isEndingWith( str,".f" ) || isEndingWith( str,".f90" ) ){
		/* Search for source files in the name */
			mCompiler_input_file.push_back( str );
			postSourceFlags = true;
		} else if( isEndingWith( str, ".o" ) ){ 
		/* Search for object files in the name */
			mCompiler_object_file.push_back( str );
		} else {
			cout << "Non-option argument: " << str << endl;
			if( postSourceFlags )
				mCompiler_extraPostSrcFlags += space_str + str;
			else
				mCompiler_extraPreSrcFlags += space_str + str;
		}
	}
}
#endif
