#include "profilerC.h"

// Check present compilers in the system to find possible candidates for optimizing
void ProfilerC::checkCompilerCandidates(){
	compiler_candidate = {
		{ compiler_ICC,    false  },
		{ compiler_GCC,    false  },
		{ compiler_LLVM,   false  },
		{ compiler_PGI,    false  },
		{ compiler_Pluto,  false  },
		{ compiler_Polly,  false  }
	};
	string result_compiler_found;
	// Can be written better, maybe later!
	result_compiler_found = executeCommand( "icc" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_ICC] = true;	
		cout << "Found in PATH: icc" << endl;
	} else {
		cout << "Couldn't find in PATH: icc" << endl;
	}

	result_compiler_found = executeCommand( "gcc" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_GCC] = true;	
		cout << "Found in PATH: gcc" << endl;
	} else {
		cout << "Couldn't find in PATH: gcc" << endl;
	}

	result_compiler_found = executeCommand( "clang" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_LLVM] = true;	
		cout << "Found in PATH: clang (LLVM)" << endl;
	} else {
		cout << "Couldn't find in PATH: clang (LLVM)" << endl;
	}

	result_compiler_found = executeCommand( "pgcc" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_PGI] = true;	
		cout << "Found in PATH: pgcc (PGI)" << endl;
	} else {
		cout << "Couldn't find in PATH: pgcc (PGI)" << endl;
	}
	
	result_compiler_found = executeCommand( "polycc" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_Pluto] = true;	
		cout << "Found in PATH: polycc (Pluto)" << endl;
	} else {
		cout << "Couldn't find in PATH: polycc (Pluto)" << endl;
	}

	result_compiler_found = executeCommand( "clang -O3 -mllvm -polly" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_Polly] = true;	
		cout << "Found in PATH: clang -O3 -mllvm -polly (Polly+LLVM)" << endl;
	} else {
		cout << "Couldn't find in PATH: clang -O3 -mllvm -polly (Polly+LLVM)" << endl;
	}

	/* In common.h */
	addOptimizationFlags();
	addLinkerFlags();
	addPostLinkerFlags();
}

/* 
 * Phase 1 of profiler: Compile all .c files to .o,
 * with available compilers and with appropriate flags (serial/parallel).
 */ 
// Function only used if Extractor is used seperately
void ProfilerC::getHotspotFiles(){
	DIR *dir;
	struct dirent *ent;
	if ( ( dir = opendir( ( getDataFolderPath() ).c_str() ) ) != NULL) {
		/* print all the files and directories within directory */
		while ( ( ent = readdir(dir) ) != NULL ){
			string filename( ent->d_name );
			if( filename.at(0) != '.' && isEndingWith(filename, ".c") ){
				files_to_compile.insert( getDataFolderPath() + ent->d_name );
				cout << "Adding files for compiling: " << ent->d_name << endl;
			}
		}
		closedir (dir);
	} else {
		/* could not open directory */
		cerr << "Profiler: Couldn't open data folder: " << getDataFolderPath() << endl;
		exit(EXIT_FAILURE);
	}
}

// TODO: Check if compilation command failed in optimize functions 
void ProfilerC::iccOptimize( bool asPlutoBackend ){
	files_to_link.clear();
	vector<string> CL_flags = optimization_flags[compiler_ICC];
	vector<string>::iterator iterv;
	string CL;
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	//Since we only want to generate .o at this point
	CL += minus_c_str + space_str;

	/* If compiling PLuTo optimized files or just simple ICC */	
	set<string> files_compile = set<string>();
	string compiler_str;
	if( !asPlutoBackend ){
		files_compile.insert(files_to_compile.begin(), files_to_compile.end());
		compiler_str = compiler_keyword[compiler_ICC];
	} else {
		files_compile.insert(pluto_files_to_compile->begin(), pluto_files_to_compile->end());
		compiler_str = compiler_keyword[compiler_Pluto];
	}
	
	set<string>::iterator iters;
	for( iters = files_compile.begin(); iters != files_compile.end(); iters++){
		string out_file = "";
		/* _pluto is added for pluto optimized file already */
		if( !asPlutoBackend ){
			out_file = (*iters).substr( 0, (*iters).find_last_of(".") ) + compiler_str + dot_o_str; 
		} else {
			if( (*iters).find(compiler_str) == string::npos )
				out_file = (*iters).substr( 0, (*iters).find_last_of(".") ) + compiler_str + dot_o_str; 
			else
				out_file = (*iters).substr( 0, (*iters).find_last_of(".") ) + dot_o_str; 
		}
		executeCommand( CL + *iters + space_str + minus_o_str + space_str + out_file );
		/* We only want to link profile code files (and mCompiler file with printTimingVar function), but compile no profile code files too */
		if( out_file.find(mCompiler_profile_file_tag) != string::npos )
			files_to_link.insert( out_file );
		// Add mCompiler header obj for linking but collect name so as to be skipped by synthesizer
		if( (*iters).find(mCompiler_header_code_name) != string::npos ){
			files_to_link.insert( out_file );
			mCompiler_header_obj.insert( out_file );
		}
		// Store base obj file for synthesizer
		if( (*iters).find(base_str) != string::npos && out_file.find(mCompiler_profile_file_tag) == string::npos ){
			if( base_obj_path.find( compiler_str ) == base_obj_path.end() ){	
				vector<string> *temp_vec = new vector<string>();
				base_obj_path.insert( pair<string,vector<string>* >(compiler_str, temp_vec) );
			}
			map< string, vector<string>* >::iterator mIter = base_obj_path.find( compiler_str );
			(mIter->second)->push_back( out_file );
		}
	}

}

void ProfilerC::gccOptimize(){
	files_to_link.clear();
	vector<string> CL_flags = optimization_flags[compiler_GCC];
	vector<string>::iterator iterv;
	string CL;
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	//Since we only want to generate .o at this point
	CL += minus_c_str + space_str;
	
	set<string>::iterator iters;
	for( iters = files_to_compile.begin(); iters != files_to_compile.end(); iters++){
		string out_file = (*iters).substr( 0, (*iters).find_last_of(".") ) + 
						  compiler_keyword[compiler_GCC] + dot_o_str; 
		executeCommand( CL + *iters + space_str + minus_o_str + space_str + out_file );
		if( out_file.find(mCompiler_profile_file_tag) != string::npos )
			files_to_link.insert( out_file );
		if( (*iters).find(mCompiler_header_code_name) != string::npos ){
			files_to_link.insert( out_file );
			mCompiler_header_obj.insert( out_file );
		}
		// Store base obj file for synthesizer
		if( (*iters).find(base_str) != string::npos && out_file.find(mCompiler_profile_file_tag) == string::npos ){
			if( base_obj_path.find( compiler_keyword[compiler_GCC] ) == base_obj_path.end() ){	
				vector<string> *temp_vec = new vector<string>();
				base_obj_path.insert( pair<string,vector<string>* >(compiler_keyword[compiler_GCC],
																	temp_vec) );
			}
			map< string, vector<string>* >::iterator mIter = 
									base_obj_path.find( compiler_keyword[compiler_GCC] );
			(mIter->second)->push_back( out_file );
		}
	}

}

void ProfilerC::llvmOptimize( bool withPollyPlugin ){
	files_to_link.clear();

	string compiler_str;
	compiler_type compiler_in_action;
	/* If using Polly as optimizer+vectorizer */
	if( !withPollyPlugin ){
		compiler_in_action = compiler_LLVM;
		compiler_str = compiler_keyword[compiler_LLVM];
	} else {
		compiler_in_action = compiler_Polly;
		compiler_str = compiler_keyword[compiler_Polly];
	}
	
	vector<string> CL_flags = optimization_flags[compiler_in_action];
	vector<string>::iterator iterv;
	string CL;
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	//Since we only want to generate .o at this point
	CL += minus_c_str + space_str;
	
	set<string>::iterator iters;
	for( iters = files_to_compile.begin(); iters != files_to_compile.end(); iters++){
		string out_file = (*iters).substr( 0, (*iters).find_last_of(".") ) + compiler_str + dot_o_str; 
		executeCommand( CL + *iters + space_str + minus_o_str + space_str + out_file );
		if( out_file.find(mCompiler_profile_file_tag) != string::npos )
			files_to_link.insert( out_file );
		if( (*iters).find(mCompiler_header_code_name) != string::npos ){
			files_to_link.insert( out_file );
			mCompiler_header_obj.insert( out_file );
		}
		// Store base obj file for synthesizer
		if( (*iters).find(base_str) != string::npos && out_file.find(mCompiler_profile_file_tag) == string::npos ){
			if( base_obj_path.find( compiler_str ) == base_obj_path.end() ){	
				vector<string> *temp_vec = new vector<string>();
				base_obj_path.insert( pair<string,vector<string>* >(compiler_str, temp_vec) );
			}
			map< string, vector<string>* >::iterator mIter = base_obj_path.find( compiler_str );
			(mIter->second)->push_back( out_file );
		}
	}
}

void ProfilerC::pgiOptimize(){
	files_to_link.clear();
	vector<string> CL_flags = optimization_flags[compiler_PGI];
	vector<string>::iterator iterv;
	string CL;
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	//Since we only want to generate .o at this point
	CL += minus_c_str + space_str;
	
	set<string>::iterator iters;
	for( iters = files_to_compile.begin(); iters != files_to_compile.end(); iters++){
		string out_file = (*iters).substr( 0, (*iters).find_last_of(".") ) + 
						  compiler_keyword[compiler_PGI] + dot_o_str; 
		executeCommand( CL + *iters + space_str + minus_o_str + space_str + out_file );
		if( out_file.find(mCompiler_profile_file_tag) != string::npos )
			files_to_link.insert( out_file );
		if( (*iters).find(mCompiler_header_code_name) != string::npos ){
			files_to_link.insert( out_file );
			mCompiler_header_obj.insert( out_file );
		}
		// Store base obj file for synthesizer
		if( (*iters).find(base_str) != string::npos && out_file.find(mCompiler_profile_file_tag) == string::npos ){
			if( base_obj_path.find( compiler_keyword[compiler_PGI] ) == base_obj_path.end() ){	
				vector<string> *temp_vec = new vector<string>();
				base_obj_path.insert( pair<string,vector<string>* >(compiler_keyword[compiler_PGI],
																	temp_vec) );
			}
			map< string, vector<string>* >::iterator mIter = 
									base_obj_path.find( compiler_keyword[compiler_PGI] );
			(mIter->second)->push_back( out_file );
		}
	}
}

void ProfilerC::plutoOptimize(){
	vector<string> CL_flags = optimization_flags[compiler_Pluto];
	vector<string>::iterator iterv;
	string CL;
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}
	
	set<string>::iterator iters;
	for( iters = files_to_compile.begin(); iters != files_to_compile.end(); iters++){
		string file_to_optimize = *iters;
		// If a base file just skip
		if( file_to_optimize.find(base_str) != string::npos ){
			pluto_files_to_compile->insert(file_to_optimize);
			continue;
		}
		// filename.c to filename_pluto.c
		int pos_of_dot = file_to_optimize.find_last_of(".");
		string pluto_opt_file = file_to_optimize.substr( 0, pos_of_dot ) + 
			compiler_keyword[compiler_Pluto] + file_to_optimize.substr( pos_of_dot, string::npos );
		string result = executeCommand( CL + file_to_optimize + space_str + minus_o_str + 
										space_str + pluto_opt_file );
		/* If PLuTo was able to optimze it i.e. it was a SCoP, 
		 *	then choose pluto file else keep original */
		if( result.find(pluto_success_str) != string::npos ){
			pluto_files_to_compile->insert(pluto_opt_file);
			/* Pluto bug workaround: Removes omp.h if parallel option not given :O */
			string sed_command = string("sed -i 's/") + "#include <math.h>" + "/" + 
								  "#include <math.h>\\\n#include <omp.h>" + "/' " + pluto_opt_file;
			executeCommand( sed_command );
		} else {
			pluto_files_to_compile->insert(file_to_optimize);
		}	
	}
	// Run iccOptimize as PLuTo backend
	iccOptimize(true);
}

void ProfilerC::pollyOptimize(){
	// Run llvmOptimize with Polly plugin
	llvmOptimize(true);
}

void ProfilerC::Optimize( const map< compiler_type, bool >::iterator &curr_candidate ){
	bool asPlutoBackend = false;
	bool withPollyPlugin = false;
	if( curr_candidate->second == true ){
		switch (curr_candidate->first) {
			case compiler_ICC:
				iccOptimize(asPlutoBackend); break;
			case compiler_GCC:
				gccOptimize(); break;
			case compiler_LLVM:
				llvmOptimize(withPollyPlugin); break;
			case compiler_PGI:
				pgiOptimize(); break;
			case compiler_Pluto:
				plutoOptimize(); break;
			case compiler_Polly:
				pollyOptimize(); break;
		}
	}
	
}

/* 
 * Phase 2 of profiler: Collect all .o from same compiler,
 * link to create an executable and run multiple times,
 * put timing data for each loop in .csv file for combiner to use.
 */ 
void ProfilerC::getObjectFiles( const string& compiler_name ){
	DIR *dir;
	struct dirent *ent;
	files_to_link.clear();
	if ( ( dir = opendir( ( getDataFolderPath() ).c_str() ) ) != NULL) {
		/* print all the files and directories within directory */
		while ( ( ent = readdir(dir) ) != NULL ){
			string filename( ent->d_name );
			if( filename.at(0) != '.' && isEndingWith(filename,compiler_name+dot_o_str) ){
				files_to_link.insert( getDataFolderPath() + ent->d_name );
				cout << "Adding files for Linking: " << ent->d_name << endl;
			}
		}
		closedir (dir);
	} else {
		/* could not open directory */
		cerr << "Couldn't open data folder: " << getDataFolderPath() << endl;
		exit(EXIT_FAILURE);
	}
}

void ProfilerC::gatherProfilingData( const string& binary_file, compiler_type curr_compiler ){
	// CSV file open for storing profiler data
	bool writing_file = false;
	CSV csv_file( getDataFolderPath()+mCompiler_profile_data_csv, writing_file );

	string compiler_str = compiler_keyword[curr_compiler];

	/* Check if binary file is present at all */
	if( !isFileExist( binary_file ) ){
		cerr << "Profiler: Following binary file doesn't exist: " << binary_file << endl;
		exit(EXIT_FAILURE);
	}

	set<string> covered_hotspots;		
	if( baseline_compiler_str == compiler_str ){
		/* Just in case for some reason its occupied */
		hotspots_skipped_profiling.clear();
	}

	for( int i = 0; i < mCompiler_profiler_runs; i++ ){
		cerr << "Profiler: Run " << i << endl; 
		string result;
		result = executeCommand( binary_file );
		
		/* Store result of execution(loops and their running time) */
		stringstream line_stream(result);
		string cell;	
		while( getline( line_stream, cell ) ){
			int keyword_pos = cell.find(mCompiler_timing_keyword);
			if( keyword_pos == string::npos )
				continue;
			int keyword_colon_pos   = keyword_pos + mCompiler_timing_keyword.length();
			string hotspot_name = cell.substr( 0, keyword_pos );
			if( hotspot_name.substr(0,1) == "_" )
				hotspot_name = hotspot_name.substr(1,string::npos);
			double hotspot_time = stod( cell.substr( keyword_colon_pos + 1 ) );
			
			// Check if that loop's profile object file is present
			string obj_file_path_profile =  getDataFolderPath() + hotspot_name + mCompiler_profile_file_tag + compiler_str + dot_o_str;
			// This is the file with no profiling code, hence to be finally linked by the synthesizer
			string obj_file_path =  getDataFolderPath() + hotspot_name + compiler_str + dot_o_str;
			
			set<string>::iterator iter = files_to_link.find( obj_file_path_profile );

			if ( iter == files_to_link.end() ){
				cerr << "Profiler: Loops object file not found: " << obj_file_path_profile << endl;
				exit(EXIT_FAILURE);
			}
			
			// There's no point of adding it for each run
			if( i == 0 && baseline_compiler_str == compiler_str )
				covered_hotspots.insert( *iter );
			
			pair<string,string>	data_key = make_pair(hotspot_name, compiler_str);
			// If such hotspot timing vector doesn't exist, create entry and add empty vector
			if( profiler_hotspot_data.find( data_key ) == profiler_hotspot_data.end() ){
				vector<double> *temp_vec = new vector<double>();
				hotspot_name_set.insert(hotspot_name);
				// Add timing vector for each hotspot and its location( for the no profile code version ) into correspoing maps
				profiler_hotspot_data.insert( pair< pair< string, string >, vector<double>* >( data_key, temp_vec ) );
				profiler_hotspot_obj_path.insert( pair< pair< string, string >, string >( data_key, obj_file_path ) );
			}
			
			map< pair< string, string >, vector<double>* >::iterator mIter = profiler_hotspot_data.find( data_key );
			(mIter->second)->push_back( hotspot_time );
			
			/* Dump same data in CSV file for reference */
			csv_file << hotspot_name << compiler_str << to_string(hotspot_time) << *iter;
			csv_file << endrow; 
		}
	}
	// Link left over obj files that had hotspot not being executed during profiling
	if( baseline_compiler_str == compiler_str ){
		set<string>::iterator iter;
		for( iter = files_to_link.begin(); iter != files_to_link.end(); iter++ ){
			if( covered_hotspots.find(*iter) == covered_hotspots.end() ){
				// Skip mCompiler header obj and base files for synthesizer
				if( mCompiler_header_obj.find(*iter) == mCompiler_header_obj.end() && 
					(*iter).find(base_str) == string::npos )
					hotspots_skipped_profiling.insert( *iter );
			}
		}
	}
}

void ProfilerC::iccProfile( bool asPlutoBackend ){
	string CL;

	/* For CC and other flags */	
	vector<string>::iterator iterv;
	vector<string> CL_flags = linker_flags[compiler_ICC];
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}
	
	string compiler_str;
	compiler_type curr_compiler;
	if( !asPlutoBackend ){
		compiler_str  = icc_str;
		curr_compiler = compiler_ICC;
	} else {
		compiler_str  = pluto_str;
		curr_compiler = compiler_Pluto;
	}
	
	/* If mCompiler is started in Profile mode */
	if( files_to_link.empty() ){
		cerr << "Profiler: Required object files are not present" << endl;
		getObjectFiles(compiler_str);
	}

	/* For gathering object files */
	set<string>::iterator iters;
	string object_files;
	string out_file;
	for( iters = files_to_link.begin(); iters != files_to_link.end(); iters++){
		object_files += *iters + space_str;
		out_file = getDataFolderPath() + mCompiler_binary_name + compiler_str;
	}
	/* Add object files then add -o binary_name, before adding post linker flags */
	CL += object_files + space_str + minus_o_str + space_str + out_file + space_str;
	
	/* For flags that go at the end of the command line */
	vector<string> post_CL_flags = post_linker_flags[compiler_ICC];
	for( iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}
	
	/* Link object files together to form the executable for profiling */
	executeCommand( CL );

	/* Send binary for profiling and storing profiling data */	
	gatherProfilingData( out_file, curr_compiler );
}

void ProfilerC::gccProfile(){
	if( files_to_link.empty() ){
		cerr << "Profiler: Required object files are not present" << endl;
		getObjectFiles(gcc_str);
	}
	string CL;
	
	vector<string>::iterator iterv;
	vector<string> CL_flags = linker_flags[compiler_GCC];
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	set<string>::iterator iters;
	string object_files;
	string out_file;
	for( iters = files_to_link.begin(); iters != files_to_link.end(); iters++){
		object_files += *iters + space_str;
		out_file = getDataFolderPath() + mCompiler_binary_name + gcc_str;
	}
	
	CL += object_files + space_str + minus_o_str + space_str + out_file + space_str;
	
	vector<string> post_CL_flags = post_linker_flags[compiler_GCC];
	for( iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	executeCommand( CL );

	/* Send binary for profiling and storing profiling data */	
	gatherProfilingData( out_file, compiler_GCC );
}

void ProfilerC::llvmProfile( bool withPollyPlugin ){

	string compiler_str;
	compiler_type compiler_in_action;
	/* If using Polly as optimizer+vectorizer */
	if( !withPollyPlugin ){
		compiler_in_action = compiler_LLVM;
		compiler_str = llvm_str;
	} else {
		compiler_in_action = compiler_Polly;
		compiler_str = polly_str;
	}
	if( files_to_link.empty() ){
		cerr << "Profiler: Required object files are not present" << endl;
		getObjectFiles(compiler_str);
	}
	
	/* Since Linker flags for Polly are same as LLVM */
	string CL;	
	vector<string>::iterator iterv;
	vector<string> CL_flags = linker_flags[compiler_LLVM];
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	set<string>::iterator iters;
	string object_files;
	string out_file;
	for( iters = files_to_link.begin(); iters != files_to_link.end(); iters++){
		object_files += *iters + space_str;
		out_file = getDataFolderPath() + mCompiler_binary_name + compiler_str;
	}

	CL += object_files + space_str + minus_o_str + space_str + out_file + space_str;

	vector<string> post_CL_flags = post_linker_flags[compiler_LLVM];
	for( iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	executeCommand( CL );

	/* Send binary for profiling and storing profiling data */	
	gatherProfilingData( out_file, compiler_in_action );
}

void ProfilerC::pgiProfile(){
		if( files_to_link.empty() ){
		cerr << "Profiler: Required object files are not present" << endl;
		getObjectFiles(pgi_str);
	}
	string CL;
	
	vector<string>::iterator iterv;
	vector<string> CL_flags = linker_flags[compiler_PGI];
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	set<string>::iterator iters;
	string object_files;
	string out_file;
	for( iters = files_to_link.begin(); iters != files_to_link.end(); iters++){
		object_files += *iters + space_str;
		out_file = getDataFolderPath() + mCompiler_binary_name + pgi_str;
	}
	
	CL += object_files + space_str + minus_o_str + space_str + out_file + space_str;
	
	vector<string> post_CL_flags = post_linker_flags[compiler_PGI];
	for( iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	executeCommand( CL );

	/* Send binary for profiling and storing profiling data */	
	gatherProfilingData( out_file, compiler_PGI );
}

void ProfilerC::plutoProfile(){
	// Run iccProfile as PLuTo backend	
	iccProfile(true);
}

void ProfilerC::pollyProfile(){
	// Run as Polly's linker
	llvmProfile(true);
}

void ProfilerC::Profile( const map< compiler_type, bool >::iterator &curr_candidate ){
	//getHotspotFiles(); -- Only if Extractor is called separately
	bool asPlutoBackend = false;
	bool withPollyPlugin = false;
	if( curr_candidate->second == true ){
		switch (curr_candidate->first) {
			case compiler_ICC:
				iccProfile(asPlutoBackend); break;
			case compiler_GCC:
				gccProfile(); break;
			case compiler_LLVM:
				llvmProfile(withPollyPlugin); break;
			case compiler_PGI:
				pgiProfile(); break;
			case compiler_Pluto:
				plutoProfile(); break;
			case compiler_Polly:
				pollyProfile(); break;
		}
	}
	
}

/* Constructor */
ProfilerC::ProfilerC( bool parallel_enabled ){
	parallel = parallel_enabled;
	checkCompilerCandidates();
	/* Rotate through compiler candidates for optimize and profile */
	map< compiler_type, bool >::iterator iter;
	for( iter = compiler_candidate.begin(); iter != compiler_candidate.end(); iter++ ){
		if( mCompiler_mode == mode_FULL_PASS || mCompiler_mode == mode_TO_OBJECT ||
			mCompiler_mode == mode_COMPLEX ){
			Optimize(iter);  // Phase 1
		}
		if( mCompiler_mode == mode_FULL_PASS || mCompiler_mode == mode_FROM_OBJECT ||
			mCompiler_mode == mode_COMPLEX ){
			Profile(iter);  // Phase 2
		}
	}	
}
