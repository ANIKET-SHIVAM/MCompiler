#ifndef EXTRACTOR_H_
#define EXTRACTOR_H_

#include <fstream>
#include <map>
#include <set>
#include <string>
#include <utility>
#include <vector>
#include <regex>

#include "rose.h"
#include "ASTtools.hh"

using namespace std;

typedef enum src_lang_enum{
	src_lang_C       = 0,
	src_lang_CPP     = 1,
	src_lang_FORTRAN = 2,
}src_lang;

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
	set<SgNode*> astNodesCollector; //Required to not add loop functions on Ast Post Processing
	set<string> header_set;
	set<string> global_vars;
	SgGlobal *global_node; // Needed to add the extern calls
	src_lang src_type;
public:	
	ofstream loop_file_buf;
public:
	Extractor() {};
	Extractor( const vector<string> &argv );
	src_lang getSrcType() { return src_type; }
	SgGlobal* getGlobalNode() { return global_node; }
	string getFilePath( const string &fileNameWithPath );
	string getFileName( const string &fileNameWithPath );
	string getFileExtn( const string &fileNameWithPath );
	int getAstNodeLineNum( SgNode *const &astNode );
	string getExtractionFileName( SgNode *astNode );
	void printHeaders( SgNode *const &astNode );
	void printGlobalsAsExtern( SgNode *const &astNode );

	/* Important functions */ 
	void extractLoops( SgNode *astNode );
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
	set<string> scope_vars_str_vec;
	set<SgVariableSymbol*> scope_vars_symbol_vec;
	set<SgInitializedName*> scope_vars_initName_vec;
public:
	LoopInfo( SgNode *astNode, SgForStatement *loop, string func_name, Extractor& e)
		: extr(e) ,astNode(astNode), loop(loop), func_name(func_name){ 
}
	string getFuncName() { return func_name; }
	void printLoopFunc();
	void pushPointersToLocalVars();
	void popLocalVarsToPointers();
	void getVarsInScope();
	void addLoopFuncAsExtern();	// In Base file
	void addLoopFuncCall();	// In Base file
};

#endif
