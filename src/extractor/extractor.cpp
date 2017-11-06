/* 
 * Written by: Aniket Shivam
 * Loop Extractor and Function Extractor too (in future)
 * Move loops into new file as function with calls to that 
 * function in the base file.
 */
#include "extractor.h"

string Extractor::getFilePath( const string &fileNameWithPath ) {
	int lastSlashPos = fileNameWithPath.find_last_of('/');
	return ( fileNameWithPath.substr(0, lastSlashPos+1) ); 
}

string Extractor::getFileName( const string &fileNameWithPath ) {
	int lastSlashPos = fileNameWithPath.find_last_of('/');
	int lastDotPos   = fileNameWithPath.find_last_of('.');
	return ( fileNameWithPath.substr(lastSlashPos + 1, lastDotPos-lastSlashPos-1) );
}

string Extractor::getFileExtn( const string &fileNameWithPath ) {
	int lastDotPos = fileNameWithPath.find_last_of('.');
	string extn    = fileNameWithPath.substr(lastDotPos + 1);
	transform(extn.begin(), extn.end(), extn.begin(), ::tolower);
	regex fortran_extn ("f*");
	if( extn.compare("c") == 0 )
		src_type = src_lang_C;
	else if( extn.compare("cc") == 0 || extn.compare("cpp") == 0 )
		src_type = src_lang_CPP;
	else if( regex_match(extn, fortran_extn) )
		src_type = src_lang_FORTRAN;
	else 
		ROSE_ASSERT(false);

	return extn;
}

int Extractor::getAstNodeLineNum( SgNode *const &astNode ) {
	ROSE_ASSERT(astNode != NULL);
	SgLocatedNode *locatedNode = isSgLocatedNode(astNode);
	return rose::getLineNumber(locatedNode);
}

string Extractor::getExtractionFileName( SgNode *astNode, bool isProfileFile ) {
	string fileNameWithPath = (astNode->get_file_info())->get_filenameString();
	mCompiler_file_path = getFilePath(fileNameWithPath);
	mCompiler_file_name = getFileName(fileNameWithPath);
	mCompiler_file_extn = getFileExtn(fileNameWithPath);
	int lineNumber = getAstNodeLineNum(astNode);

	string output_path = getDataFolderPath();
	string file_name = mCompiler_file_name;
	string file_extn = mCompiler_file_extn;
	
	file_name += "_line" + to_string(lineNumber);
	
	if( isProfileFile )
		file_name += mCompiler_profile_file_tag + "." + file_extn;
	else
		file_name += "." + mCompiler_file_extn;

	return output_path + file_name;
}

void Extractor::printHeaders( ofstream& loop_file_buf ){
	vector<string>::iterator iter;
	bool hasOMP = false;
	bool hasIO = false;
	for( iter = header_set.begin(); iter != header_set.end(); iter++ ){
		string header_str = *iter;
		loop_file_buf << header_str;  //header_set has space at the end already
		if( header_str.find("omp.h") != string::npos )
				hasOMP = true;
		if( src_type == src_lang_C && header_str.find("stdio.h") != string::npos )
				hasIO = true;
		if( src_type == src_lang_CPP && header_str.find("iostream") != string::npos )
				hasIO = true;
	}
	// TODO: if it is a fortran code
	loop_file_buf << "#include \"mCompiler.h\"" << endl;
	if( !hasOMP && ( src_type == src_lang_C || src_type == src_lang_CPP ) )
		loop_file_buf << "#include <omp.h>" << endl;
	if( src_type == src_lang_C && !hasIO )
		loop_file_buf << "#include <stdio.h>" << endl;
	if( src_type == src_lang_CPP && !hasIO )
		loop_file_buf << "#include <iostream>" << endl;

}

void Extractor::printGlobalsAsExtern( ofstream& loop_file_buf ){
	set<string>::iterator iter;
	for( iter = global_vars.begin(); iter != global_vars.end(); iter++ ){
		string var_str = *iter;
		loop_file_buf << "extern " << var_str << ";" << endl; 
	}
}

bool LoopInfo::isDeclaredInInnerScope( SgScopeStatement *var_scope ){
	vector<SgNode *> nested_scopes = NodeQuery::querySubTree( loop_scope, V_SgScopeStatement );
	if( var_scope == NULL || nested_scopes.empty() )
		return false;
	vector<SgNode *>::const_iterator scopeItr = nested_scopes.begin();
	for( ; scopeItr != nested_scopes.end(); scopeItr++ ){
		if( isSgNode(var_scope) == isSgNode(*scopeItr) )
			return true;
	}
	return false;	
}

void LoopInfo::getVarsInScope(){
	/* collectVarRefs will collect all variables used in the loop body */
	vector<SgVarRefExp *> sym_table;
	SageInterface::collectVarRefs( dynamic_cast<SgLocatedNode *>(astNode), sym_table );

	vector<SgVarRefExp *>::iterator iter;
	for( iter = sym_table.begin(); iter != sym_table.end(); iter++ ){
		SgVariableSymbol *var = (*iter)->get_symbol();
		SgScopeStatement *var_scope = ( var->get_declaration() )->get_scope();
			
		/* Neither globals variables nor variables declared inside the loop body nor struct members(dirty way - scope name not NULL) should be passed */ 
		if( !( isSgGlobal(var_scope) || isDeclaredInInnerScope(var_scope) || var_scope->get_qualified_name() != "" ) && 
				find( scope_vars_symbol_vec.begin(), scope_vars_symbol_vec.end(), var ) == scope_vars_symbol_vec.end() ){
			//cerr << "Var Scope: "<< var->get_name().getString() << ", " << var_scope->get_qualified_name() << endl;
			//SgVariableSymbol *var = dynamic_cast<SgVariableSymbol *>(*iter);
			scope_vars_symbol_vec.push_back( var ); // Needed for function call	
			scope_vars_initName_vec.push_back( var->get_declaration() ); // Needed for function extern defn	

			string var_type_str = (var->get_type())->unparseToString();
			if( extr.getSrcType() == src_lang_C ){
				/* 
				 * Add '_primitive' after primitive parameter name,
				 * so that actual name can be used inside the body 
				 */
				//cerr << "Var info: "<<var->get_name().getString() << ", " << (var->get_type())->variantT() << endl;
				bool isTypedefArray  = false;
				bool isTypedefStruct = false;
				if( (var->get_type())->variantT() == V_SgTypedefType ){
					SgTypedefType *type_def_var = dynamic_cast<SgTypedefType *>(var->get_type());
					if( (type_def_var->get_base_type())->variantT() == V_SgArrayType ){
						isTypedefArray = true;
						//var_type_str = (type_def_var->get_base_type())->unparseToString();
					} else if( SageInterface::isStructType(type_def_var->get_base_type()) ){
						isTypedefStruct = true;
						//var_type_str = "struct " + var_type_str;
					}
					//cerr << "Typedef: " << (type_def_var->get_base_type())->variantT() << ", isStruct: " << SageInterface::isStructType(type_def_var->get_base_type()) << endl;
				}		
				if( (var->get_type())->variantT() == V_SgArrayType || isTypedefArray ){
					/* To change to var_type var_name[][][] */
					int first_square_brac = var_type_str.find_first_of("[");
					if( first_square_brac != string::npos )
						scope_vars_str_vec.push_back( var_type_str.substr( 0,first_square_brac ) + var->get_name().getString()
													+ var_type_str.substr( first_square_brac ) );
					else
						scope_vars_str_vec.push_back( var_type_str + space_str + var->get_name().getString() );
				} else if( SageInterface::isStructType(var->get_type()) || isTypedefStruct ){
					scope_vars_str_vec.push_back( var_type_str + "* " + var->get_name().getString() );
					scope_struct_str_vec.push_back( var->get_name().getString() );
				} else {
					scope_vars_str_vec.push_back( var_type_str + "* " + var->get_name().getString() + "_primitive" );
				}
			} else if( extr.getSrcType() == src_lang_CPP ){
				scope_vars_str_vec.push_back( var_type_str + "& " + var->get_name().getString() );
			}		
			//cerr << "Symbol Table : " << *(scope_vars_str_vec.rbegin()) << endl;
		}
	}
}

bool LoopInfo::hasFuncCallInScope( ){
	Rose_STL_Container<SgNode *> funcCallList =
			NodeQuery::querySubTree(loop_scope, V_SgFunctionCallExp);
	Rose_STL_Container<SgNode *>::iterator funcCallIter = funcCallList.begin();
	/* If loop contain no function call */
	if( funcCallIter == funcCallList.end() )
		return false;
	
	for (; funcCallIter != funcCallList.end(); funcCallIter++) {
		SgFunctionCallExp *funcCallExp = isSgFunctionCallExp(*funcCallIter);
		SgFunctionDeclaration *funcDecl = funcCallExp->getAssociatedFunctionDeclaration();
		if( funcDecl != NULL && !SageInterface::isExtern(funcDecl) ){
			scope_funcCall_vec.insert( funcDecl );
		}
	}
	if( !scope_funcCall_vec.empty() )
		return true;
	return false;
}

void LoopInfo::addScopeFuncAsExtern( string &externFuncStr ){
	set<SgFunctionDeclaration *>::iterator iter;
	for( iter = scope_funcCall_vec.begin(); iter != scope_funcCall_vec.end(); iter++ ){
		SgFunctionDeclaration *declFunc = *iter;
		bool consider_as_Extern = true;
		/* Check if it is a inline function */
		for( auto const &inlineFunc : extr.inline_func_map ){
			if( SageInterface::isSameFunction( declFunc, inlineFunc.first ) ){
				externFuncStr += inlineFunc.second;
				consider_as_Extern = false;
				break;
			}
		}
		if( consider_as_Extern )
			externFuncStr += "extern " + declFunc->unparseToString() + '\n';
	}
}

/* Only called if C */
void LoopInfo::pushPointersToLocalVars( ofstream& loop_file_buf ){
	//ofstream& loop_file_buf = extr.loop_file_buf;
	
	vector<SgVariableSymbol*>::iterator iter;
	for( iter = scope_vars_symbol_vec.begin(); iter != scope_vars_symbol_vec.end(); iter++ ){
		string var_type_str = ((*iter)->get_type())->unparseToString();
		string var_name_str = ((*iter)->get_name()).getString();
		bool isTypedefArray  = false;
		bool isTypedefStruct = false;
		if( ((*iter)->get_type())->variantT() == V_SgTypedefType ){
			SgTypedefType *type_def_var = dynamic_cast<SgTypedefType *>((*iter)->get_type());
			if( (type_def_var->get_base_type())->variantT() == V_SgArrayType )
						isTypedefArray = true;
			if( SageInterface::isStructType(type_def_var->get_base_type()) )
						isTypedefStruct = true;
		}
		bool isPrimitive = true;
		if( ((*iter)->get_type())->variantT() == V_SgArrayType || isTypedefArray ){
			isPrimitive = false;	
		} else if( SageInterface::isStructType( (*iter)->get_type() ) || isTypedefStruct ){
			isPrimitive = false;	
		}
		if( isPrimitive ){
			loop_file_buf << var_type_str <<" "<< var_name_str <<" = "<<"*"
				<< var_name_str <<"_primitive" <<";"<< endl; 		
		}
	}
}

/* Only called if C */
void LoopInfo::popLocalVarsToPointers( ofstream& loop_file_buf ){
	//ofstream& loop_file_buf = extr.loop_file_buf;
	
	vector<SgVariableSymbol*>::iterator iter;
	for( iter = scope_vars_symbol_vec.begin(); iter != scope_vars_symbol_vec.end(); iter++ ){
		string var_type_str = ((*iter)->get_type())->unparseToString();
		string var_name_str = ((*iter)->get_name()).getString();
		bool isTypedefArray  = false;
		bool isTypedefStruct = false;
		if( ((*iter)->get_type())->variantT() == V_SgTypedefType ){
			SgTypedefType *type_def_var = dynamic_cast<SgTypedefType *>((*iter)->get_type());
			if( (type_def_var->get_base_type())->variantT() == V_SgArrayType )
						isTypedefArray = true;
			if( SageInterface::isStructType(type_def_var->get_base_type()) )
						isTypedefStruct = true;
		}

		bool isConst = false;
		if( SageInterface::isConstType((*iter)->get_type()) )
			isConst = true;
		
		bool isPrimitive = true;
		if( ((*iter)->get_type())->variantT() == V_SgArrayType || isTypedefArray ){
			isPrimitive = false;	
		} else if( SageInterface::isStructType( (*iter)->get_type() ) || isTypedefStruct ){
			isPrimitive = false;	
		}

		if( isPrimitive && !isConst ){
			loop_file_buf <<"*"<< var_name_str <<"_primitive"<<" = "
				<< var_name_str <<";"<< endl; 		
		}
	}
}

/* 
 * Take cares of print complete loop function and adding func calls
 * and extern loop func to the base file.
 * Manages SCoP pragmas.
 * Add OMP Timer around the loop. (Not sure)
 * Manages variables that are needed for extracting the loop.
 */
void LoopInfo::printLoopFunc( ofstream& loop_file_buf,  bool isProfileFile ){

//	ofstream& loop_file_buf = extr.loop_file_buf;

	/* Scope of loop body contains the variables needed for this loop to compile */
	loop_scope = ( loop->get_loop_body() )->get_scope();

	if( hasFuncCallInScope() ){
		string externFuncStr;
		addScopeFuncAsExtern( externFuncStr );
		loop_file_buf << externFuncStr;
	}

	getVarsInScope();
	//getParamatersInFunc	
	
	// Function definition 
	loop_file_buf << endl << "void " << getFuncName() << "( ";
	if( !scope_vars_str_vec.empty() ){
		vector<string>::iterator iter = scope_vars_str_vec.begin();
		loop_file_buf << *iter;
		iter++;
		for( ; iter != scope_vars_str_vec.end(); iter++ )
			loop_file_buf << ", " << *iter;
	}
	loop_file_buf << " ){" << endl; // Function Start

	//Required only for C, since C++ is passed through reference(&) 
	if( extr.getSrcType() == src_lang_C )
		pushPointersToLocalVars( loop_file_buf );
	
	// Add OMP Timer start
	if( isProfileFile )
		loop_file_buf << "double loop_timer_start = omp_get_wtime( );" << endl;

	// TODO: Add SCoP pragma based on tool option 
	loop_file_buf << "#pragma scop" << endl;
	
	// Entire Loop Body
	if( extr.getSrcType() == src_lang_C ){
		loop_file_buf << loop->unparseToCompleteString() << endl;	
	} else if( extr.getSrcType() == src_lang_CPP ){
		loop_file_buf << loop->unparseToCompleteString() << endl;	
	}

	loop_file_buf << "#pragma endscop" << endl;
	
	// Add OMP Timer end
	if( isProfileFile )
		loop_file_buf << "double loop_timer_end = omp_get_wtime( );" << endl;	

	/* REMOVED: Very important for profiler to run and collect running time of each loop/hotspot */
	// Add OMP Timer difference print
/*
	if( extr.getSrcType() == src_lang_C ){
		loop_file_buf << "printf(\"\\n" << getFuncName() + mCompiler_timing_keyword << " \%.9f\\n\", loop_timer_end - loop_timer_start );" << endl;
	} else if( extr.getSrcType() == src_lang_CPP ){
		loop_file_buf << "std::cout << std::endl \"" << getFuncName() + mCompiler_timing_keyword << " \" << std::setprecision(9) << (loop_timer_end - loop_timer_start) << std::endl;" << endl;
	}
*/	

	/* Create name for global timing variable and add to collection vector. */
	/* Collect timing for each run of the loop */
	if( isProfileFile ){
		string temp_str = getFuncName();
		if( find( extr.loop_funcName_vec->begin(), extr.loop_funcName_vec->end(), temp_str ) == extr.loop_funcName_vec->end() )
			(extr.loop_funcName_vec)->push_back( temp_str );
		string loopTimingVarStr	= extr.getLoopTimingVarSuffix() + getFuncName();
		loop_file_buf << loopTimingVarStr << " += " << "loop_timer_end - loop_timer_start;" << endl;
	}
	//Required only for C, since C++ is passed through reference(&) 
	if( extr.getSrcType() == src_lang_C )
		popLocalVarsToPointers( loop_file_buf );
	
	loop_file_buf << "}" << endl; // Function End
}

void Extractor::addExternDefs( SgFunctionDeclaration *func ){
	externLoopFuncDefinitionsAdd.push_back( dynamic_cast<SgStatement *>(func) );
}

/* Add loop function call as extern in the base source file */
void LoopInfo::addLoopFuncAsExtern(){
	if( extr.getGlobalNode() != NULL ){
		vector<SgInitializedName*>::iterator iter;
		SgFunctionParameterList* paramList = SageBuilder::buildFunctionParameterList();
		for( iter = scope_vars_initName_vec.begin(); iter != scope_vars_initName_vec.end(); iter++){
			// Create parameter list
			SgName arg_name = (*iter)->get_name();
			SgInitializedName *arg_init_name;
			if( extr.getSrcType() == src_lang_C ){
				// Pointers for C
				SgPointerType *arg_type =
					SageBuilder::buildPointerType( (*iter)->get_type() );
				arg_init_name = SageBuilder::buildInitializedName(arg_name, arg_type);
			} else if( extr.getSrcType() == src_lang_CPP ){
				// Reference for C++
				SgReferenceType *arg_type =
					SageBuilder::buildReferenceType( (*iter)->get_type() );
				arg_init_name = SageBuilder::buildInitializedName(arg_name, arg_type);
			}
			SageInterface::appendArg(paramList,arg_init_name);
		}	
		// Create function declaration
		SgName func_name = getFuncName();
		SgFunctionDeclaration *func = SageBuilder::buildNondefiningFunctionDeclaration
			( func_name, SageBuilder::buildVoidType(), paramList, extr.getGlobalNode() );
		SageInterface::setExtern(func);
		// Insert Function into Global scope
		//SageInterface::prependStatement( func, extr.getGlobalNode() );
		extr.addExternDefs( func );
	} else {
		ROSE_ASSERT( extr.getGlobalNode() != NULL );
	}
}

/* Replaces the loop subtree with a function call to corresponding loop function */
void LoopInfo::addLoopFuncCall(){
	vector<SgVariableSymbol*>::iterator iter;
	vector<SgExpression*> expr_list;
	for( iter = scope_vars_symbol_vec.begin(); iter != scope_vars_symbol_vec.end(); iter++){
			if( extr.getSrcType() == src_lang_C ){
				// 'Address Of' for C except when its an array
				bool isTypedefArray = false;
				if( ((*iter)->get_type())->variantT() == V_SgTypedefType ){
					SgTypedefType *type_def_var = dynamic_cast<SgTypedefType *>((*iter)->get_type());
					if( (type_def_var->get_base_type())->variantT() == V_SgArrayType )
								isTypedefArray = true;
				}
				if( ( (*iter)->get_type() )->variantT() == V_SgArrayType || isTypedefArray ){
					expr_list.push_back( SageBuilder::buildVarRefExp( (*iter) ) );
				} else {
					expr_list.push_back( SageBuilder::buildAddressOfOp
											( SageBuilder::buildVarRefExp( (*iter) ) ) );
				}
			} else if( extr.getSrcType() == src_lang_CPP ){
				// Reference for C++
				expr_list.push_back( SageBuilder::buildVarRefExp( (*iter) ) );
			}
	}	
	SgName func_name = getFuncName();
	SgFunctionCallExp* call_expr = SageBuilder::buildFunctionCallExp
		( func_name, SageBuilder::buildVoidType(), SageBuilder::buildExprListExp( expr_list ),loop_scope );
	SageInterface::replaceStatement( loop, SageBuilder::buildExprStatement( call_expr ), true);
}

void Extractor::extractLoops( SgNode *astNode ){
	SgForStatement *loop = dynamic_cast<SgForStatement *>(astNode);
	string loop_profile_file_name    = getExtractionFileName(astNode, true);
	string loop_no_profile_file_name = getExtractionFileName(astNode, false);
	
	ofstream loop_file_buf_profile;
	loop_file_buf_profile.open(loop_profile_file_name.c_str(), ofstream::out);
	ofstream loop_file_buf_no_profile;
	loop_file_buf_no_profile.open(loop_no_profile_file_name.c_str(), ofstream::out);
	
	files_to_compile.insert( loop_profile_file_name );
	files_to_compile.insert( loop_no_profile_file_name );
	
	string nameForNextLoop = getFileName( (astNode->get_file_info())->get_filenameString() ) +
										  "_line" + to_string( getAstNodeLineNum(astNode) );
	/* Since you cannot start Function name with a digit */ 
	if( isdigit(nameForNextLoop[0]) )	
		nameForNextLoop.insert(0,1,'_');

	// Create loop object
	LoopInfo curr_loop( astNode, loop, nameForNextLoop, *this); 

	printHeaders( loop_file_buf_profile );
	printGlobalsAsExtern( loop_file_buf_profile );
	
	printHeaders( loop_file_buf_no_profile );
	printGlobalsAsExtern( loop_file_buf_no_profile );
	
	//cerr << "Adding loop to file: " << curr_loop.getFuncName() << endl;
	/* 
	 * Take cares of print complete loop function and adding func calls
	 * and extern loop func to the base file.
	 */
	curr_loop.printLoopFunc( loop_file_buf_profile, true );	
	curr_loop.printLoopFunc( loop_file_buf_no_profile, false );	
	curr_loop.addLoopFuncAsExtern();
	curr_loop.addLoopFuncCall();

	loop_file_buf_profile.close();
	loop_file_buf_no_profile.close();

	/* Change struct access with pointer to struct */
	for( auto const &str : curr_loop.scope_struct_str_vec ){
		/* change struct access: 'st =' to '(*st) =' */ 
		string sed_command1 = "sed -i 's/" + str + " =/(*" + str + ") =/g' ";
		executeCommand(sed_command1 + loop_profile_file_name );
		executeCommand(sed_command1 + loop_no_profile_file_name );
		/* change struct access: st.member to st->member */ 
		string sed_command2 = "sed -i 's/" + str + " \\./" + str + " ->/g' ";
		executeCommand(sed_command2 + loop_profile_file_name );
		executeCommand(sed_command2 + loop_no_profile_file_name );
	}
	/* TODO: Call astyleFormatter here in distant future */
}

/* Required for Top Down parsing */
InheritedAttribute Extractor::evaluateInheritedAttribute( SgNode *astNode,
															  InheritedAttribute inh_attr ){
	/* If condition so that Post traversal doesn't mess up extractor changes to the graph */
	if( astNodesCollector.find(astNode) == astNodesCollector.end() ){
		astNodesCollector.insert(astNode);
		switch (astNode->variantT()) {
			case V_SgForStatement: {
				SgForStatement *loop = dynamic_cast<SgForStatement *>(astNode);
				if (loop == NULL) {
					//cerr << "Error: incorrect loop node type" << endl;
					break;
				}  
				++inh_attr.loop_nest_depth_;
				//cerr << "Found node: " << loop->class_name() << " with depth: " << inh_attr.loop_nest_depth_ << endl;
				// TODO: Upto what loop depth to extract as tool option
				if( inh_attr.loop_nest_depth_ < 2 ){
					//cerr << "Extracting loop now" << endl;
					extractLoops( astNode );
				}
				break;
			}
			case V_SgGlobal: {
				global_node = isSgGlobal(astNode);
				break;
			}
//			case V_SgSourceFile: {
				/* add mCompiler header file into the source */
//				SgSourceFile *sourceFile = dynamic_cast<SgSourceFile *>(astNode);
//				SageInterface::insertHeader(sourceFile, mCompiler_header_name, false, false);
//				break;
//			}
			case V_SgFunctionDeclaration: {
				/* Collect all extern functions in this file */
				SgFunctionDeclaration *declFunc = dynamic_cast<SgFunctionDeclaration *>(astNode);
				SgFunctionModifier declModf     = declFunc->get_functionModifier();
				
				/* Inline function are copied to be put in loops files where neccesary 
				   Function body is present only here through function declaration. */
				if( declModf.isInline() ){
					string inline_func_str = declFunc->unparseToString() + '\n';
					inline_func_map.insert( pair<SgFunctionDeclaration*,string>
							(declFunc, inline_func_str) );
				}
				
				if( SageInterface::isExtern(declFunc) ){
					header_set.push_back( declFunc->unparseToString() +'\n' );
				} 

				if( SageInterface::isMain(astNode) ){
					mainFuncPresent = true;
					main_scope = dynamic_cast<SgScopeStatement *>( (declFunc->get_definition())->get_body() );	
					if( (declFunc->get_orig_return_type())->variantT() == V_SgTypeVoid ) 	
						addTimingFuncCallVoidMain();	
					else
						nonVoidMain = true;
				}
				break;
			}
			case V_SgReturnStmt: {
				SgStatement *returnstmt = dynamic_cast<SgStatement *>(astNode);
				if( mainFuncPresent && returnstmt->get_scope() == main_scope && nonVoidMain )
					addTimingFuncCallNonVoidMain(returnstmt); 
				break;
			}
			default: { 
					//cerr << "Found node: " << astNode->class_name() << endl;	
			}
		}

		/* For gathering the header files */
		SgLocatedNode *locatedNode = isSgLocatedNode(astNode);
		if (locatedNode != NULL ) {
			SgStatement *locatedNode_SgStatement = dynamic_cast<SgStatement *>(astNode);
			AttachedPreprocessingInfoType *directives = locatedNode->getAttachedPreprocessingInfo();
			if (directives != NULL && isSgGlobal(locatedNode_SgStatement->get_scope()) ) {
				AttachedPreprocessingInfoType::iterator i;
				for (i = directives->begin(); i != directives->end(); i++) {
					string directiveTypeName = PreprocessingInfo::directiveTypeName((*i)->getTypeOfDirective()).c_str();
					string headerName = (*i)->getString().c_str();
					//cerr << "Header Type: " << directiveTypeName << endl;	
					// #include
					if (directiveTypeName == "CpreprocessorIncludeDeclaration" &&
						find( header_set.begin(), header_set.end(), headerName ) ==  header_set.end()) {
						header_set.push_back(headerName);
						lastIncludeStmt = locatedNode_SgStatement;	
						//cerr << "Header: " << headerName << endl;	
					}	
					// #define
					if (directiveTypeName == "CpreprocessorDefineDeclaration" &&
						find( header_set.begin(), header_set.end(), headerName ) ==  header_set.end()) {
						header_set.push_back(headerName);
						//cerr << "Header: " << headerName << endl;	
					}	
					// #ifdef
					if (directiveTypeName == "CpreprocessorIfdefDeclaration"){
						header_set.push_back(headerName);
						//cerr << "Header: " << headerName << endl;	
					}	
					// #ifndef
					if (directiveTypeName == "CpreprocessorIfndefDeclaration" ){
						header_set.push_back(headerName);
						//cerr << "Header: " << headerName << endl;	
					}	
					// #if
					if (directiveTypeName == "CpreprocessorIfDeclaration"){
						header_set.push_back(headerName);
						//cerr << "Header: " << headerName << endl;	
					}	
					// #else
					if (directiveTypeName == "CpreprocessorElseDeclaration" ){
						header_set.push_back(headerName);
						//cerr << "Header: " << headerName << endl;	
					}	
					// #endif
					if (directiveTypeName == "CpreprocessorEndifDeclaration" ){
						header_set.push_back(headerName);
						//cerr << "Header: " << headerName << endl;	
					}	
				}
			}
		}
		
		/* Gather the global variables/static data member names */
		SgVariableDeclaration* variableDeclaration = isSgVariableDeclaration(astNode);
		if (variableDeclaration != NULL)
		{
			// Typically just one InitializedName in a VariableDecl, but still
			SgInitializedNamePtrList::iterator i = variableDeclaration->get_variables().begin();
			while (i != variableDeclaration->get_variables().end())
			{
				SgInitializedName* initializedName = *i;
				if (initializedName != NULL){
					// Get Type for the variable
					SgType* variableType = initializedName->get_type();
					string var_type_str = variableType->unparseToString();
					// Now check if this is a global variable or an static class member
					SgScopeStatement* scope = variableDeclaration->get_scope();
					if (isSgGlobal(scope) != NULL){
						string var_str = initializedName->get_name().getString();
						//cerr << "Found a global var: " << var_type_str + " " + var_str << endl;	
						if( variableType->variantT() == V_SgArrayType ){
							/* To change to var_type var_name[][][] */
							int first_square_brac = var_type_str.find_first_of("[");
							if( first_square_brac != string::npos )
								global_vars.insert( var_type_str.substr( 0,first_square_brac ) + var_str
													+ var_type_str.substr( first_square_brac ) );
						} else {
							/* Bcoz Rose add wierd stuff like __PRETTY_FUNCTION__ on assert() calls */
							if( var_str.find(ignorePrettyFunctionCall) == string::npos )	
								global_vars.insert( var_type_str + " " + var_str );
						}
						lastIncludeStmt = dynamic_cast<SgStatement *>(astNode);	
					}
					if (isSgClassDefinition(scope) != NULL)
					{
						// Now check if it is a static data member
						if (variableDeclaration->get_declarationModifier().get_storageModifier().isStatic() == true){
							//cerr << "Found a static global var: " << var_type_str + " " + initializedName->get_name().getString() << endl;	
							global_vars.insert( var_type_str + " " + initializedName->get_name().getString() );
							lastIncludeStmt = dynamic_cast<SgStatement *>(astNode);	
						}
					}
				}	
				i++;
			}
		}
	} else {
		cout << "In Post traversal, generally shouldn't come here." << endl;
		/* If Post AST traversal */
		switch (astNode->variantT()){
			case V_SgGlobal: {
				cout << "At Post traversal Global Node" << endl;
				addPostTraversalDefs(); 
				//global_node = isSgGlobal(astNode);
			}
		} 
	}
	return inh_attr;
}

/* Required for Bottom Up parsing virtual function - Will not be used */
int Extractor::evaluateSynthesizedAttribute( SgNode *astNode, InheritedAttribute inh_attr,
												 SubTreeSynthesizedAttributes syn_attr_list){
	return 0;
}

void Extractor::addPostTraversalDefs(){
	/* LastIncludeStatement point to either last include or global var declr
	 * Due to bug in rosem insert After on include statement skip the next subtree */
	if( getLastIncludeStatement() != NULL ){
		if( isSgVariableDeclaration( getLastIncludeStatement() ) != NULL  )
			SageInterface::insertStatementListAfter( getLastIncludeStatement(), externLoopFuncDefinitionsAdd );
		else
			SageInterface::insertStatementListBefore( getLastIncludeStatement(), externLoopFuncDefinitionsAdd );
			
	} else {
		SageInterface::appendStatementList( externLoopFuncDefinitionsAdd, getGlobalNode() );
	}
}

void Extractor::addTimingFuncCallVoidMain(){
	SgFunctionCallExp* call_expr = SageBuilder::buildFunctionCallExp
		( printTimingVarFuncName, SageBuilder::buildVoidType(), NULL, main_scope );
	SageInterface::appendStatement( SageBuilder::buildExprStatement( call_expr ), main_scope );
}
	
void Extractor::addTimingFuncCallNonVoidMain( SgStatement* returnStmt ){
	if( main_scope != NULL ){
		SgFunctionCallExp* call_expr = SageBuilder::buildFunctionCallExp
			( printTimingVarFuncName, SageBuilder::buildVoidType(), NULL, main_scope );
		SageInterface::insertStatementBefore( returnStmt, SageBuilder::buildExprStatement( call_expr ) );	
	}	
}

void Extractor::modifyExtractedFileText( const string &base_file, const string &base_file_profile ){
	/* Remove static keyword from variables and functions in both profile and non-profile file */
	string sed_command1 = "sed -i 's/static //g' " + base_file;
	executeCommand( sed_command1 );
	sed_command1 = "sed -i 's/static //g' " + base_file_profile;
	executeCommand( sed_command1 );
	
	/* Remove register keyword from variables and functions in both profile and non-profile file */
	string sed_command2 = "sed -i 's/register //g' " + base_file;
	executeCommand( sed_command2 );
	sed_command2 = "sed -i 's/register //g' " + base_file_profile;
	executeCommand( sed_command2 );
	
	/* Remove mCompile header and accumulater timing var print function from non profile base file */
	string sed_command3 = "sed -i '/" + mCompiler_header_name + "/d;/" + printTimingVarFuncName + "/d' " + base_file;
	executeCommand( sed_command3 );
}

/* Extractor constructor, for initiating via driver */
Extractor::Extractor( const vector<string> &argv ){
	SgProject *ast = NULL;
	/* Create AST and pass to the extraction functions */
	ast = frontend( argv );
	ROSE_ASSERT( ast != NULL );
	InheritedAttribute inhr_attr;
	/* Traverse all files and their ASTs in Top Down fashion (Inherited Attr) and extract loops */
	this->traverseInputFiles( ast, inhr_attr );
	//this->generateHeaderFile();
	this->addPostTraversalDefs();
	AstTests::runAllTests(ast);
	/* Generate rose_<orig file name> file for the transformed AST */
	ast->unparse();
	delete ast;
	
	string base_file = getDataFolderPath() + getFileName() + base_str + "." + getFileExtn();
	string base_file_profile = getDataFolderPath() + getFileName() + base_str + mCompiler_profile_file_tag + "." + getFileExtn();
	/* If file doesn't have any loop, then mCompiler_file_name,_file_extn would be empty at this point */
	if( mCompiler_file_name.empty() ){
		/* copy the base file as it is, since rose preprocessor might have bug */
		executeCommand( "cp " + argv.back() + space_str + base_file );
		executeCommand( "cp " + base_file + space_str + base_file_profile );
	} else { 	
		/* Move base file to the mCompiler data folder: 
		 * mv rose_filename.x mCompiler_data/filename_base.x
		 * cp mCompiler_data/filename_base.x mCompiler_data/filename_base_profile_.x
		 */
		executeCommand( "mv rose_"+ getFileName() + "." + getFileExtn() + space_str + base_file );
		executeCommand( "cp " + base_file + space_str + base_file_profile );
		modifyExtractedFileText(base_file, base_file_profile);
	}
	files_to_compile.insert(base_file);
	files_to_compile.insert(base_file_profile);
}
