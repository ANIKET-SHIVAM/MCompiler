/* Loop Extractor:
 * Move loops into new file as function with calls to that function in the original.
 */
#include "extractor.h"

/* Required for Top Down parsing */
InheritedAttribute LoopExtractor::evaluateInheritedAttribute( SgNode *astNode,
															  InheritedAttribute inh_attr ){
	switch (astNode->variantT()) {
	case V_SgForStatement: {
		SgForStatement *loop = dynamic_cast<SgForStatement *>(astNode);
		if (loop == NULL) {
		  cerr << "Error: incorrect loop node type" << endl;
		  break;
		}
		++inh_attr.loop_nest_depth_;
		break;
	}
	default: {}
	}

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
				}	
			}
		}
	}

	return inh_attr;
}

/* Required for Bottom Up parsing */
int LoopExtractor::evaluateSynthesizedAttribute( SgNode *astNode, InheritedAttribute inh_attr,
												 SubTreeSynthesizedAttributes syn_attr_list){
	int ret_attr = 0;
	bool hasNestedLoop = false;
		if (syn_attr_list.size()) {
		ret_attr = *max_element(syn_attr_list.begin(), syn_attr_list.end());
	}

	//hasNestedLoop = accumulate(syn_attr_list.begin(), syn_attr_list.end(), false, logical_or<bool>());

	switch (astNode->variantT()) {
	case V_SgForStatement: {
		SgForStatement *loop = dynamic_cast<SgForStatement *>(astNode);
		if (loop == NULL) {
			cerr << "Error: incorrect loop node type" << endl;
			break;
		}
		//if (ret_attr < inh_attr.loop_nest_depth_) {
		//	ret_attr = inh_attr.loop_nest_depth_;
		//}
		//// extract the innermost loop, if the depth of the nested loop is less
		//// than the specified value
		//if ((inh_attr.loop_nest_depth_ == extract_depth) ||
		//	(inh_attr.loop_nest_depth_ < extract_depth && hasNestedLoop == false)) {

		//  // TODO: we currently skip the loop if it contains function calls
		//	hasMathLibCall = false;

		//	Rose_STL_Container<SgNode *> funcCallList = NodeQuery::querySubTree(loop, V_SgFunctionCallExp);
		//	if (funcCallList.size() > 0) {
		//		if (onlyHasMathLibCall(funcCallList)) {
		//		hasMathLibCall = true;
		//		} else {
		//			int cur_size = outer_loop_vec_.size();
		//			extractInnerLoops(loop);
		//			if (outer_loop_vec_.size() == cur_size)
		//				skip_reason_count[kFunctionCall]++;
		//			break;
		//		}
		//	}

		//	// skip the loop due other reason such as incompatible to rose
		//	if (skipLoop(loop)) {
		//			skip_reason_count[kOthers]++;
		//	break;
		//		}

		//	outer_loop_vec_.push_back(LoopInfo(loop, ret_attr, hasMathLibCall));
		//} else {
		//	cout << " Inner loop, skipped";
		//}
		//cout << endl;
		break;
	}
	default: {}
	}
  return ret_attr;
}

void runExtraction( SgProject *ast ){
	ROSE_ASSERT( ast != NULL );
	InheritedAttribute inhr_attr;
	LoopExtractor fileExtractor;
	fileExtractor.traverseInputFiles( ast, inhr_attr );
}
	

int main( int argc, char *argv[] ){
	vector<string> argvList(argv + 1, argv + argc);
	SgProject *project = NULL;

	/* Create AST and pass to the extraction functions */
	project = frontend(argc, argv);
    runExtraction(project);

	delete project;
	return 0;
}
