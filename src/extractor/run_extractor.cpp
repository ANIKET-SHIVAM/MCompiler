#include "extractor.h"

/* To initiate extractor independently */

void runExtraction(SgProject *ast) {
  ROSE_ASSERT(ast != NULL);
  InheritedAttribute inhr_attr;
  Extractor fileExtractor;
  /* Traverse all files and their ASTs in Top Down fashion (Inherited Attr) and
   * extract loops */
  fileExtractor.traverseInputFiles(ast, inhr_attr);
}

int main(int argc, char *argv[]) {
  SgProject *project = NULL;
  /* Create AST and pass to the extraction functions */
  project = frontend(argc, argv);
  runExtraction(project);
  AstTests::runAllTests(project);
  project->unparse();
  delete project;
  return 0;
}
