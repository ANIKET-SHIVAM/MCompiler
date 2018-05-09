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


const option::Descriptor usage[] =
{
	{UNKNOWN            , 0, ""  , ""              ,Arg::None     , "Usage:  mCompiler <input_files> [options] [-o output]\nOptions:" },
	{HELP               , 0, "h" , "help"          ,Arg::None     , "    -h,--help            Print usage" },
	{EXTRACT            , 0, ""  , "noextract"     ,Arg::None     , "    --[no]extract        Extract hotspots" },
	{PROFILE            , 0, ""  , "noprofile"     ,Arg::None     , "    --[no]profile        Profile extracted hotspots" },
	{SYNTHESIZE         , 0, ""  , "nosynthesize"  ,Arg::None     , "    --[no]synthesize     Combine best performing hotspots to generate binary" },
	{TEST               , 0, ""  , "test"          ,Arg::None     , "    --test               Test performance compared to other compilers"
																							                                              " optimized code" },
	{PARALLEL           , 0, ""  , "parallel"      ,Arg::None     , "    --parallel           Generate multi-threaded code based on OpenMP directives\n"
																							                    "                         Default: Serial code generation (with vectorization)" },
	{AUTO_PARALLEL      , 0, ""  , "auto-parallel" ,Arg::None     , "    --auto-parallel      Auto-parallelize the hotspots" },
	{PREFETCH           , 0, ""  , "prefetch"      ,Arg::None     , "    --prefetch           Enable software data prefetching" },
	{PROFILE_COUNT      , 0, ""  , "profile-runs"  ,Arg::Numeric  , "    --profile-runs=<num> Number of time profiler should run the program to"
																							                                              " collect data. Default: 3" },
	{ADV_PROFILE        , 0, ""  , "adv-profile"   ,Arg::None     , "    --adv-profile        Advanced Profiling with Perf tool" },
	{INPUT_PROFILE      , 0, ""  , "input"         ,Arg::Required , "    --input=<args>       Input to the program"
																							                                              " Needed to generate profiling information" },
	{KNL                , 0, ""  , "knl"           ,Arg::None     , "    --knl                Compile for Intel Knights Landing processor" },
	{C99                , 0, ""  , "c99"           ,Arg::None     , "    --c99                Conforms to ISO C99 standards. Default: C11" },
	{COMPILE_TO_OBJECT  , 0, "c" , "compile"       ,Arg::None     , "    -c[<arg>]            Compile to object file" },
	{OUTPUT_BINARY      , 0, "o" , "output"        ,Arg::Required , "    -o[<arg>]            Output object/binary name" },
	{INCLUDE_PATH       , 0, "I" , "include"       ,Arg::Required , "    -I[<arg>]            Directory to include file search path" },
	{LINKER_PATH        , 0, "L" , "link"          ,Arg::Required , "    -L[<arg>]            Directory to search for libraries" },
	{LIBS_PATH          , 0, "l" , "libs"          ,Arg::Required , "    -l[<arg>]            Instruct the linker to link in the -l<string> library" },
	{MACRO_DEFS         , 0, "D" , "DEFS"          ,Arg::Required , "    -D[<arg>]            Macro definition" },
	{MC_DEBUG           , 0, ""  , "debug"         ,Arg::None     , "    --debug              Output mCompiler workflow" },
	{MC_INFO            , 0, ""  , "info"          ,Arg::None     , "    --info               Print information for mCompiler workflow" },
	{0,0,0,0,0,0}
};

void set_mCompiler_options( int argc, char* argv[] ){
	mCompiler_enabled_options = {
		{ EXTRACT,           true  },
		{ PROFILE,           true  },
		{ SYNTHESIZE,        true  },
		{ TEST,              false },
		{ PARALLEL,          false },
		{ AUTO_PARALLEL,     false },
		{ PREFETCH,          false },
		{ ADV_PROFILE,       false },
		{ KNL,               false },
		{ C99,               false },
		{ COMPILE_TO_OBJECT, false },
		{ MC_DEBUG,          false },
		{ MC_INFO,           false },
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

	/* After Help option is printed in case no args or -help flag */
	if (options[HELP] || argc == 0){
		int columns = getenv("COLUMNS")? atoi(getenv("COLUMNS")) : 120;
		option::printUsage(fwrite, stdout, usage, columns);
		exit(EXIT_FAILURE);
	}
	
	bool postSourceFlags = false;
  string tmpstr = "";

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
		case PARALLEL:
			mCompiler_enabled_options[PARALLEL] = true;
			break;
		case AUTO_PARALLEL:
			mCompiler_enabled_options[AUTO_PARALLEL] = true;
			mCompiler_enabled_options[PARALLEL] = true;
			break;
		case PREFETCH:
			mCompiler_enabled_options[PREFETCH] = true;
			break;
		case COMPILE_TO_OBJECT:
			mCompiler_enabled_options[COMPILE_TO_OBJECT] = true;
			break;
		case PROFILE_COUNT:
			mCompiler_profiler_runs = atoi(opt.arg);
			break;
		case INPUT_PROFILE:
			mCompiler_profiler_input = opt.arg;
			break;
		case ADV_PROFILE:
			mCompiler_enabled_options[ADV_PROFILE] = true;
			break;
		case KNL:
			mCompiler_enabled_options[KNL] = true;
			break;
		case C99:
			mCompiler_enabled_options[C99] = true;
			break;
		case OUTPUT_BINARY:
      tmpstr = opt.arg;
			mCompiler_binary_path = tmpstr.substr(0, tmpstr.find_last_of('/')+1);
			mCompiler_binary_name = tmpstr.substr(tmpstr.find_last_of('/')+1);
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
		case MC_DEBUG:
			mCompiler_enabled_options[MC_DEBUG] = true;
			mCompiler_enabled_options[MC_INFO] = true;
			break;
		case MC_INFO:
			mCompiler_enabled_options[MC_INFO] = true;
			break;
		}
	}
	
	for (int i = 0; i < parse.nonOptionsCount(); ++i){
		string str = parse.nonOption(i);
		if( isEndingWith( str,".c" ) || isEndingWith( str,".cc" ) || isEndingWith( str,".cpp" ) || 
   			isEndingWith( str,".f" ) || isEndingWith( str,".f77" ) || isEndingWith( str,".f90" ) || isEndingWith( str,".f95" ) ){
		/* Search for source files in the name */
			mCompiler_input_file.push_back( getAbsolutePath(str) );
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
