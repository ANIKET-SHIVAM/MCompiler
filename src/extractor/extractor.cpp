/* 
 * Written by: Aniket Shivam
 * Loop Extractor and Function Extractor too (in future)
 * Move loops into new file as function with calls to that 
 * function in the base file.
 */
#include "extractor.h"

string Extractor::getFilePath( const string &fileNameWithPath ) {
	int lastSlashPos = fileNameWithPath.find_last_of('/');
	mCompiler_file_path = fileNameWithPath.substr(0, lastSlashPos);
	return mCompiler_file_path;
}

string Extractor::getFileName( const string &fileNameWithPath ) {
	int lastSlashPos = fileNameWithPath.find_last_of('/');
	int lastDotPos   = fileNameWithPath.find_last_of('.');
	mCompiler_file_name = fileNameWithPath.substr(lastSlashPos + 1, lastDotPos-lastSlashPos-1);
	return mCompiler_file_name;
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
		ROSE_ASSERT(true);

	mCompiler_file_extn = extn;
	return mCompiler_file_extn;
}

int Extractor::getAstNodeLineNum( SgNode *const &astNode ) {
	ROSE_ASSERT(astNode != NULL);
	SgLocatedNode *locatedNode = isSgLocatedNode(astNode);
	return rose::getLineNumber(locatedNode);
}

string Extractor::getExtractionFileName( SgNode *astNode ) {
	string fileNameWithPath = (astNode->get_file_info())->get_filenameString();
	//string filePath = getFilePath(fileNameWithPath);
	string fileName = getFileName(fileNameWithPath);
	string fileExtn = getFileExtn(fileNameWithPath);
	int lineNumber = getAstNodeLineNum(astNode);

	string outputPath = getDataFolderPath();

	fileName += "_line" + to_string(lineNumber);

	fileName = fileName + "." + fileExtn;

	return outputPath + fileName;
}

void Extractor::printHeaders( SgNode *const &astNode ){
	set<string>::iterator iter;
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
	if( !hasOMP && ( src_type == src_lang_C || src_type == src_lang_CPP ) )
		loop_file_buf << "#include <omp.h>" << endl;
	if( src_type == src_lang_C && !hasIO )
		loop_file_buf << "#include <stdio.h>" << endl;
	if( src_type == src_lang_CPP && !hasIO )
		loop_file_buf << "#include <iostream>" << endl;

}

void Extractor::printGlobalsAsExtern( SgNode *const &astNode ){
	set<string>::iterator iter;
	for( iter = global_vars.begin(); iter != global_vars.end(); iter++ ){
		string var_str = *iter;
		loop_file_buf << "extern " << var_str << ";" << endl; 
	}

}
// TODO: Remove read only variables in the scope
void LoopInfo::getVarsInScope(){
	SgSymbolTable *symbols      = loop_scope->get_symbol_table();
	std::set<SgNode*> sym_table = symbols->get_symbols();
	set<SgNode*>::iterator iter;
	for( iter = sym_table.begin(); iter != sym_table.end(); iter++ ){
		SgVariableSymbol *var = dynamic_cast<SgVariableSymbol *>(*iter);
		scope_vars_symbol_vec.insert( var ); // Needed for function call	
		scope_vars_initName_vec.insert( var->get_declaration() ); // Needed for function extern defn	

		string var_type_str = (var->get_type())->unparseToString();
		if( (var->get_type())->variantT() == V_SgArrayType ){
			int first_square_brac = var_type_str.find_first_of("[");
			var_type_str =  var_type_str.substr(0,first_square_brac-1);
		}
		if( extr.getSrcType() == src_lang_C ){
			/* 
			 * Add '_primitive' after primitive parameter name,
			 * so that actual name can be used inside the body 
			 */
			if( (var->get_type())->variantT() != V_SgArrayType )
				scope_vars_str_vec.insert( var_type_str + "* " + var->get_name().getString()
					+ "_primitive" );
			else
				scope_vars_str_vec.insert( var_type_str + "* " + var->get_name().getString() );
		} else if( extr.getSrcType() == src_lang_CPP )
			scope_vars_str_vec.insert( var_type_str + "& " + var->get_name().getString() );
			
		cerr << "Symbol Table : " << *(scope_vars_str_vec.rbegin()) << endl;
	}
}

/* Only called if C */
void LoopInfo::pushPointersToLocalVars(){
	ofstream& loop_file_buf = extr.loop_file_buf;
	
	set<SgVariableSymbol*>::iterator iter;
	for( iter = scope_vars_symbol_vec.begin(); iter != scope_vars_symbol_vec.end(); iter++ ){
		string var_type_str = ((*iter)->get_type())->unparseToString();
		string var_name_str = ((*iter)->get_name()).getString();
		if( ((*iter)->get_type())->variantT() != V_SgArrayType ){
			loop_file_buf << var_type_str <<" "<< var_name_str <<" = "<<"*"
				<< var_name_str <<"_primitive" <<";"<< endl; 		
		}
	}
}

/* Only called if C */
void LoopInfo::popLocalVarsToPointers(){
	ofstream& loop_file_buf = extr.loop_file_buf;
	
	set<SgVariableSymbol*>::iterator iter;
	for( iter = scope_vars_symbol_vec.begin(); iter != scope_vars_symbol_vec.end(); iter++ ){
		string var_type_str = ((*iter)->get_type())->unparseToString();
		string var_name_str = ((*iter)->get_name()).getString();
		if( ((*iter)->get_type())->variantT() != V_SgArrayType ){
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
void LoopInfo::printLoopFunc(){

	ofstream& loop_file_buf = extr.loop_file_buf;

	loop_scope = loop->get_scope();
	getVarsInScope();	
	
	// Function definition 
	loop_file_buf << endl << "void " << getFuncName() << "( ";
	if( !scope_vars_str_vec.empty() ){
		set<string>::iterator iter = scope_vars_str_vec.begin();
		loop_file_buf << *iter;
		iter++;
		for( ; iter != scope_vars_str_vec.end(); iter++ )
			loop_file_buf << ", " << *iter;
	}
	loop_file_buf<< " ){" << endl; // Function Start

	//Required only for C, since C++ is passed through reference(&) 
	if( extr.getSrcType() == src_lang_C )
		pushPointersToLocalVars();
	
	// Add OMP Timer start
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
	loop_file_buf << "double loop_timer_end = omp_get_wtime( );" << endl;	

	/* Very important for profiler to run and collect running time of each loop/hotspot */
	// Add OMP Timer difference print
	if( extr.getSrcType() == src_lang_C ){
		loop_file_buf << "printf(\"" << getFuncName() << ": \%.9f\\n\", loop_timer_end - loop_timer_start );" << endl;
	} else if( extr.getSrcType() == src_lang_CPP ){
		loop_file_buf << "std::cout << \"" << getFuncName() << ": \" << std::setprecision(9) << (loop_timer_end - loop_timer_start) << std::endl;" << endl;
	}
	
	//Required only for C, since C++ is passed through reference(&) 
	if( extr.getSrcType() == src_lang_C )
		popLocalVarsToPointers();
	
	loop_file_buf << "}" << endl; // Function End
}

/* Add loop function call as extern in the base source file */
void LoopInfo::addLoopFuncAsExtern(){
	if( extr.getGlobalNode() != NULL ){
		set<SgInitializedName*>::iterator iter;
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
		extr.getGlobalNode()->prepend_declaration( func );
	} else {
		ROSE_ASSERT( extr.getGlobalNode() != NULL );
	}
}

/* Replaces the loop subtree with a function call to corresponding loop function */
void LoopInfo::addLoopFuncCall(){
	set<SgVariableSymbol*>::iterator iter;
	vector<SgExpression*> expr_list;
	for( iter = scope_vars_symbol_vec.begin(); iter != scope_vars_symbol_vec.end(); iter++){
			if( extr.getSrcType() == src_lang_C ){
				// 'Address Of' for C
				expr_list.push_back( SageBuilder::buildAddressOfOp
										( SageBuilder::buildVarRefExp( (*iter) ) ) );
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
	string loop_file_name = getExtractionFileName(astNode);
	files_to_compile.insert( loop_file_name );
	loop_file_buf.open(loop_file_name.c_str(), ofstream::out);
	
	// Create loop object
	LoopInfo curr_loop( astNode, loop, 
		getFileName( (astNode->get_file_info())->get_filenameString() ) + "_line" + 
			to_string( getAstNodeLineNum(astNode) ), *this); 

	printHeaders(astNode);
	printGlobalsAsExtern(astNode);
	
	//cerr << "Adding loop to file: " << curr_loop.getFuncName() << endl;
	/* 
	 * Take cares of print complete loop function and adding func calls
	 * and extern loop func to the base file.
	 */
	curr_loop.printLoopFunc();	
	curr_loop.addLoopFuncAsExtern();
	curr_loop.addLoopFuncCall();	

	loop_file_buf.close();

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
					cerr << "Error: incorrect loop node type" << endl;
					break;
				}  
				++inh_attr.loop_nest_depth_;
				cerr << "Found node: " << loop->class_name() << " with depth: " << inh_attr.loop_nest_depth_ << endl;
				// TODO: Upto what loop depth to extract as tool option
				if( inh_attr.loop_nest_depth_ < 2 ){
					//cerr << "Extracting loop now" << endl;
					extractLoops( astNode );
				}
				break;
			}
			case V_SgGlobal: {
				global_node = isSgGlobal(astNode);
			}
			default: { 
					cerr << "Found node: " << astNode->class_name() << endl;	
			}
		}

		/* For gathering the header files */
		SgLocatedNode *locatedNode = isSgLocatedNode(astNode);
		if (locatedNode != NULL) {
			AttachedPreprocessingInfoType *directives = locatedNode->getAttachedPreprocessingInfo();
			if (directives != NULL) {
				AttachedPreprocessingInfoType::iterator i;
				for (i = directives->begin(); i != directives->end(); i++) {
					string directiveTypeName = PreprocessingInfo::directiveTypeName((*i)->getTypeOfDirective()).c_str();
					string headerName = (*i)->getString().c_str();
					if (directiveTypeName == "CpreprocessorIncludeDeclaration" &&
						header_set.find(headerName) == header_set.end()) {
						header_set.insert(headerName);
						//cerr << "Header: " << headerName << endl;	
					}	
					if (directiveTypeName == "CpreprocessorDefineDeclaration" &&
						header_set.find(headerName) == header_set.end()) {
						header_set.insert(headerName);
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
						//cerr << "Found a global var: " << var_type_str + " " + initializedName->get_name().getString() << endl;	
						if( variableType->variantT() == V_SgArrayType ){
							/* To change to var_type var_name[][][] */
							int first_square_brac = var_type_str.find_first_of("[");
							global_vars.insert( var_type_str.substr( 0,first_square_brac ) + initializedName->get_name().getString()
												+ var_type_str.substr( first_square_brac ) );
						} else {
							global_vars.insert( var_type_str + " " + initializedName->get_name().getString() );
						}
					}
					if (isSgClassDefinition(scope) != NULL)
					{
						// Now check if it is a static data member
						if (variableDeclaration->get_declarationModifier().get_storageModifier().isStatic() == true){
							//cerr << "Found a static global var: " << var_type_str + " " + initializedName->get_name().getString() << endl;	
							global_vars.insert( var_type_str + " " + initializedName->get_name().getString() );
						}
					}
				}	
				i++;
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

/* Extractor constructor, for initiating via driver */
Extractor::Extractor( const vector<string> &argv ){
	SgProject *ast = NULL;
	/* Create AST and pass to the extraction functions */
	ast = frontend( argv );
	ROSE_ASSERT( ast != NULL );
	InheritedAttribute inhr_attr;
	/* Traverse all files and their ASTs in Top Down fashion (Inherited Attr) and extract loops */
	this->traverseInputFiles( ast, inhr_attr );
	AstTests::runAllTests(ast);
	/* Generate rose_<orig file name> file for the transformed AST */
	ast->unparse();
	delete ast;	
}
