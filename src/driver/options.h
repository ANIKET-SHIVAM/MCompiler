#ifndef OPTIONS_H
#define OPTIONS_H

#include <map>

typedef enum {
	option_extract  = 0,
	option_profile  = 1,
	option_combiner = 2,
	option_test     = 3,
	option_report   = 4,
	option_none     = 5
}mCompiler_options;

map< mCompiler_options, bool > mCompiler_enabled_options;

void print_usage_options(){
    fprintf(stdout, "Usage:  mCompiler <input.c> [options] [-o output]\n");
    fprintf(stdout, "\nOptions:\n");
    fprintf(stdout, "	-[no]extract    Extract hotspots\n");
    fprintf(stdout, "	-[no]profile    Profile extracted hotspots\n");
    fprintf(stdout, "	-[no]combine    Combine best performing hotspots to create the final executable\n");
    fprintf(stdout, "	-test           Test performance compared to single compiler optimized code\n");
    fprintf(stdout, "	-report         Generate mCompiler performance report\n");
    fprintf(stdout, "	-o <binary>     Output binary name\n");
    fprintf(stdout, "	-I,-L, etc.     Flags required to compile the source\n");
}

string* set_mCompiler_options( int argc, char* argv[] ){
	mCompiler_enabled_options = {
		{ option_extract,  true  },
		{ option_profile,  true  },
		{ option_combiner, true  },
		{ option_test,     false },
		{ option_report,   false },
		{ option_none,     false }
	};
	// [input_file, output_file, compiler_flags]
	string* driver_return_str = new string[3];
	string compiler_flags;
	vector<string> options(argv + 1, argv + argc);
	vector<string>::iterator iter = options.begin(); 
	driver_return_str[0] = *iter;
	for( iter = options.begin(); iter != options.end(); iter++ ){
		if( *iter == "-noextract" )
			mCompiler_enabled_options[option_extract]  = false;
		else if( *iter == "-noprofile" )
			mCompiler_enabled_options[option_profile]  = false;
		else if( *iter == "-nocombine" )
			mCompiler_enabled_options[option_combiner] = false;
		else if( *iter == "-test" )
			mCompiler_enabled_options[option_test]     = true;
		else if( *iter == "-report" )
			mCompiler_enabled_options[option_report]   = true;
		else if( *iter == "-o" ){
			iter++;
			driver_return_str[1] = *iter;
		} else
			compiler_flags += *iter;
	}
	driver_return_str[2] = compiler_flags;
	return driver_return_str; 	
}

// TODO: Map compiler options from ICC, GCC and LLVM.

#endif
