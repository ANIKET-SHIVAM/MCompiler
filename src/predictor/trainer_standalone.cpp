#include "trainer_standalone.h"

void readData() {
  bool is_reading_file = true;
  CSV csv_file(input_file,is_reading_file);

  /* Read header row with labels */
  vector<string> header_row;
  if(csv_file.readNextRow())
    header_row = csv_file.getRowData();
  else
    exit(EXIT_FAILURE);
  cout << *(header_row.begin()) << endl; 
 
  /* Read counters */
  vector<string> row_data;
  while (csv_file.readNextRow()) {
    row_data = csv_file.getRowData();
    vector<string>::iterator iter = row_data.begin();
    cout << *iter << endl;
  } // while


}


int main(int argc, char** argv) {
  if (argc < 3) {
    cout << "./trainer_standalone <Input Data File> <ML trained model file>" << endl;
    exit(EXIT_FAILURE);
  }
  input_file = string(argv[1]); 
  trained_model_file = string(argv[2]);

  readData();
//  cleanData();
//  trainModel();
  return 0;
}
