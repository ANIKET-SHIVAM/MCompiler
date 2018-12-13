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
  feature_vector_size = header_row.size();
  vector<string>::iterator iter;
  for (iter = header_row.begin(); iter != header_row.end(); iter++) {
    if ((*iter).compare("Function") != 0 && (*iter).compare("Compiler")) {
      features_name_vector.push_back(*iter);
      cout << "Feature: " << *iter << endl;
    }
  }

  /* Read instances */
  vector<string> row_data;
  int i = 0;
  while (csv_file.readNextRow()) {
    row_data = csv_file.getRowData();
    vector<string>::iterator iter = row_data.begin();
    i++;
  } // while
  instances_count = i;
}

void prepareTrainData() {
  // Define training data sizes
  trainingDataMat = Mat(instances_count,feature_vector_size,CV_32F);
  labelMat = Mat(instances_count,1,CV_32S);

  bool is_reading_file = true;
  CSV csv_file(input_file,is_reading_file);
  csv_file.readNextRow(); // Skip header row

  vector<string> row_data;
  vector<string>::iterator iter;
  int row = 0;
  while (csv_file.readNextRow()) {
    row_data = csv_file.getRowData();
    iter = row_data.begin();
    cout << "Function: " << *iter; iter++; // skip function name
    cout << '\t' << "Compiler: " << *iter << endl;
    stringstream data_string_to_int(*iter);
    int tmpint = 0;
    data_string_to_int >> tmpint;
    labelMat.at<int>(row) = tmpint; // Target compiler
    iter++; // move to counters

    int col = 0;
    for (; iter != row_data.end(); iter++) {
      stringstream data_string_to_float(*iter);
      float tmpfloat = 0;
      data_string_to_float >> tmpfloat;
      trainingDataMat.at<float>(row,col) = tmpfloat; // Add counter
      col++;
    } //for
    row++;
  } // while
}

void trainModel() {
  cout << "Starting training." << endl;
  Ptr<RTrees> rfmodel = RTrees::create();
  rfmodel->train(trainingDataMat, ROW_SAMPLE, labelMat); //Feature vectors are stored as rows
  cout << "Finished training." << endl;
  rfmodel->save(trained_model_file);
  cout << "Finished saving trained model." << endl;
}

int main(int argc, char** argv) {
  if (argc < 3) {
    cout << "./trainer_standalone <Input Data File> <ML trained model file>" << endl;
    exit(EXIT_FAILURE);
  }
  input_file = string(argv[1]); 
  trained_model_file = string(argv[2]);

  readData();
  prepareTrainData();
  trainModel();
  return 0;
}
