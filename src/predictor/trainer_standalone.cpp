#include "trainer_standalone.h"

void readData() {
  bool is_reading_file = true;
  CSV csv_file(input_file, is_reading_file);

  /* Read header row with labels */
  vector<string> header_row;
  if (csv_file.readNextRow())
    header_row = csv_file.getRowData();
  else
    exit(EXIT_FAILURE);
  feature_vector_size = header_row.size() - 2; // Minus Function and Compiler

  ofstream feature_file(trained_model_file + "_features.txt");

  vector<string>::iterator iter;
  for (iter = header_row.begin(); iter != header_row.end(); iter++) {
    if ((*iter).compare("Function") != 0 && (*iter).compare("Compiler")) {
      feature_file << *iter << '\n';
      cout << "Feature: " << *iter << endl;
      feature_labels.push_back(*iter);
    }
  }
  feature_file.close();

  /* Read instances */
  vector<string> row_data;
  int i = 0;
  while (csv_file.readNextRow()) {
    row_data                      = csv_file.getRowData();
    vector<string>::iterator iter = row_data.begin();
    i++;
  } // while
  instances_count = i;
}

void prepareTrainData() {
  // Define training data sizes
  trainingDataMat = Mat(instances_count, feature_vector_size, CV_32F);
  testingDataMat  = Mat(1, feature_vector_size, CV_32F);
  labelMat        = Mat(instances_count, 1, CV_32S);

  bool is_reading_file = true;
  CSV csv_file(input_file, is_reading_file);
  csv_file.readNextRow(); // Skip header row

  vector<string> row_data;
  vector<string>::iterator iter;
  int row = 0;
  int col;
  while (csv_file.readNextRow()) {
    row_data = csv_file.getRowData();
    iter     = row_data.begin();
    cout << "Function: " << *iter;
    iter++; // skip function name
    cout << '\t' << "Compiler: " << *iter << endl;
    stringstream data_string_to_int(*iter);
    int tmpint = 0;
    data_string_to_int >> tmpint;
    labelMat.at<int>(row) = tmpint; // Target compiler
    iter++;                         // move to counters

    col = 0;
    for (; iter != row_data.end(); iter++) {
      stringstream data_string_to_float(*iter);
      float tmpfloat = 0;
      data_string_to_float >> tmpfloat;
      trainingDataMat.at<float>(row, col) = tmpfloat; // Add counter
      col++;
    } // for
    row++;
  } // while
  cout << "Instances: " << row << ", Features: " << col << endl;
}

void setModelParams() {
  rfmodel->setMaxCategories(MAXCATEGORIES);
  rfmodel->setMaxDepth(MAXDEPTH);
  rfmodel->setMinSampleCount(MINSAMPLECOUNT);
  rfmodel->setActiveVarCount(ACTIVEVARCOUNT);
  rfmodel->setCalculateVarImportance(CALCULATEVARIMPORTANCE);
}

void printVarImportance() {
  Mat varImp = rfmodel->getVarImportance();
  Size size  = varImp.size();
  for (int i = 0; i < size.height; i++) {
    cout << feature_labels.at(i) << " : " << varImp.at<float>(i) << endl;
  }
}

void trainModel() {
  cout << "Starting training." << endl;
  rfmodel = RTrees::create();
  setModelParams();
  rfmodel->train(trainingDataMat, ROW_SAMPLE,
                 labelMat); // Feature vectors are stored as rows
  cout << "Finished training." << endl;
  rfmodel->save(trained_model_file);
  cout << "Finished saving trained model." << endl;
  printVarImportance();
}

void testModel() {
  cout << "Starting testing." << endl;
  int correct_prediction = 0;
  rfmodel                = RTrees::create();
  rfmodel                = RTrees::load(trained_model_file);
  for (int i = 0; i < instances_count; i++) {
    Mat tmpMat = trainingDataMat.row(i);
    tmpMat.copyTo(testingDataMat);
    int prediction = rfmodel->predict(testingDataMat);
    int label      = labelMat.at<int>(i, 0);
    cout << "Label: " << label << ", Prediction: " << prediction << endl;
    if (label == prediction)
      correct_prediction++;
  }
  cout << "Finished testing." << endl;
  cout << "Testing Accuracy: "
       << ((float)correct_prediction * 100) / instances_count << endl;
}

int main(int argc, char **argv) {
  if (argc < 3) {
    cout << "./trainer_standalone <Input Data File> <ML trained model file> "
            "<--test>"
         << endl;
    exit(EXIT_FAILURE);
  }
  input_file         = string(argv[1]);
  trained_model_file = string(argv[2]);
  bool is_testing    = false;
  if (argc >= 4) {
    string teststr(argv[3]);
    if (teststr.compare("--test") == 0)
      is_testing = true;
  }
  readData();
  prepareTrainData();
  if (!is_testing)
    trainModel();
  else
    testModel();
  return 0;
}
