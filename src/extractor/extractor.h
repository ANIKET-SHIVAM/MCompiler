#ifndef EXTRACTOR_H_
#define EXTRACTOR_H_

#include "driver/common.h"
#include <boost/tokenizer.hpp>
#include <boost/algorithm/string.hpp>

using namespace std;

class InheritedAttribute {
public:
	int loop_nest_depth_;
	int scope_depth_;

	InheritedAttribute() : loop_nest_depth_(0), scope_depth_(0) {}

	InheritedAttribute(const InheritedAttribute &other) {
		loop_nest_depth_ = other.loop_nest_depth_;
		scope_depth_ = other.scope_depth_;
	}
};

class SynthesizedAttribute {
public:
  SynthesizedAttribute() {}
};

class Extractor : public SgTopDownBottomUpProcessing<InheritedAttribute, int> {
	string mCompiler_file_path; 
	string mCompiler_original_file_name; 
	string mCompiler_file_name; 
	string mCompiler_file_extn;
	SgScopeStatement* main_scope = NULL;
	bool nonVoidMain = false;
	SgStatement *lastIncludeStmt = NULL;
	SgGlobal *global_node; // Needed to add the extern calls
	set<SgNode*> astNodesCollector; //Required to not add loop functions on Ast Post Processing
	vector<SgStatement*> externLoopFuncDefinitionsAdd;
	/* header_vec needs to be vector so that the order of IFDEF,ENDIF,etc. remain same */
	vector<string> header_vec;
  /* Global vars and associated OMP threadprivate directives */
	vector<string> global_vars;
	src_lang src_type;
public:
	string ignorePrettyFunctionCall1 = "__PRETTY_FUNCTION__";
	string ignorePrettyFunctionCall2 = "__func__";
	string ignorePrettyFunctionCall3 = "__FUNCTION__";
	bool mainFuncPresent = false;	
	vector<string> *loop_funcName_vec = new vector<string>;
	map<SgFunctionDeclaration*,string> inline_func_map;
  string loopOMPpragma = "";
  string loopSkipPragma = "";
	vector<string> func_var_str_vec;
  SgScopeStatement* loopParentFuncScope = NULL;
  map<SgStatement*,SgStatement*> externFuncDef;
public:
	Extractor() {};
	Extractor( const vector<string> &argv );

	src_lang getSrcType() { return src_type; }
	SgGlobal* getGlobalNode() { return global_node; }
	SgStatement* getLastIncludeStatement() { return lastIncludeStmt; }
	string getDataFolderPath() { return mCompiler_data_folder_path; };
	string getLoopTimingVarSuffix() { return loopTimingVarSuffix; };
	string getOMPpragma() { return loopOMPpragma; };

	string getFilePath() { return mCompiler_file_path; };
	string getFileName() { return mCompiler_file_name; };
	string getOrigFileName() { return mCompiler_original_file_name; };
	string getFileExtn() { return mCompiler_file_extn; };
	string getFilePath( const string &fileNameWithPath );
	string getFileName( const string &fileNameWithPath );
	string getOrigFileName( const string &fileNameWithPath );
	string getFileExtn( const string &fileNameWithPath );
	int getAstNodeLineNum( SgNode *const &astNode );
	string getExtractionFileName( SgNode *astNode, bool isProfileFile );
  string getLoopName(SgNode *astNode);
	void printHeaders( ofstream& loop_file_buf, bool isProfileFile );
	void printGlobalsAsExtern( ofstream& loop_file_buf );
	void addExternDefs( SgFunctionDeclaration *func );
	void addPostTraversalDefs(); 
	void addTimingFuncCallVoidMain();
	void addTimingFuncCallNonVoidMain( SgStatement* returnStmt );
	void modifyExtractedFileText( const string &base_file, const string &base_file_profile );
  void collectAdjoiningLoops( SgStatement *loop);
//  void getVarsInFunction();

  bool skipLoop( SgNode *astNode );
	void extractLoops( SgNode *astNode );
	void extractFunctions( SgNode *astNode );
	virtual InheritedAttribute evaluateInheritedAttribute( SgNode *astNode, 
														   InheritedAttribute inh_attr );
	virtual int evaluateSynthesizedAttribute( SgNode *astNode, InheritedAttribute inh_attr,
                                              SubTreeSynthesizedAttributes syn_attr_list );

};

/* Must contain all info regarding the current loop */
class LoopInfo {
	Extractor& extr;
	SgNode *astNode;
	SgForStatement *loop;
	string func_name;
	SgScopeStatement *loop_scope;
	vector<string> scope_vars_str_vec;
	vector<SgVariableSymbol*> scope_vars_symbol_vec;
	vector<SgInitializedName*> scope_vars_initName_vec;
	set<SgFunctionDeclaration *> scope_funcCall_vec;
	vector<string> scope_globals_vec;
  vector<string> privateOMP_array_vec;
  vector<string> OMPscope_symbol_vec;
	map<string,string> OMParray_type_map;
public:
	vector<string> scope_struct_str_vec;
public:
	LoopInfo( SgNode *astNode, SgForStatement *loop, string func_name, Extractor& e )
		: extr(e) ,astNode(astNode), loop(loop), func_name(func_name) {}
	string getFuncName() { return func_name; }
	bool isDeclaredInInnerScope( SgScopeStatement *var_scope );
	void getVarsInScope();
	bool hasFuncCallInScope();
	void addScopeFuncAsExtern( string &externFuncStr );
	void addScopeGlobalsAsExtern( string &externGlobalsStr );

	void printLoopFunc( ofstream& loop_file_buf, bool isProfileFile );
	void pushPointersToLocalVars( ofstream& loop_file_buf );
	void popLocalVarsToPointers( ofstream& loop_file_buf );
  void analyzeOMPprivateArrays( const string &pragmaStr );
  string printOMPprivateArrays();
  string sanitizeOMPpragma( const string &pragmaStr );
	void addLoopFuncAsExtern();	// In Base file
	void addLoopFuncCall();	// In Base file
};

#endif
