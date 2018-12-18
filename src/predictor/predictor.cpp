#include "predictor.h"

/* Load trained model for serial code */
void Predictor::loadModel() {
  if (!isFileExist(mCompiler_trained_model_path)) {
    cerr << "Predictor: No trained model found to make predictions at:"
         << mCompiler_trained_model_path << endl;
    exit(EXIT_FAILURE);
  }
  if (!isFileExist(mCompiler_trained_model_features_path)) {
    cerr << "Predictor: No trained model features found to make predictions at:"
         << mCompiler_trained_model_features_path << endl;
    exit(EXIT_FAILURE);
  }

  string line;
  ifstream feature_file(mCompiler_trained_model_features_path);
  while (getline(feature_file, line)) {
    model_feature_labels.push_back(line);
  }
  feature_file.close();

  feature_vector_size = model_feature_labels.size();
  instanceMat.create(1, feature_vector_size, CV_32F);

  rfmodel_trained = RTrees::create();
  rfmodel_trained = RTrees::load(mCompiler_trained_model_path);
}

/* Load trained model for auto-par code */
void Predictor::loadAutoParModel() {
  if (!isFileExist(mCompiler_trained_autopar_model_path)) {
    cerr << "Predictor: No trained autopar model found to make predictions at:"
         << mCompiler_trained_autopar_model_path << endl;
    exit(EXIT_FAILURE);
  }
  if (!isFileExist(mCompiler_trained_autopar_model_features_path)) {
    cerr << "Predictor: No trained autopar model features found to make "
            "predictions at:"
         << mCompiler_trained_autopar_model_features_path << endl;
    exit(EXIT_FAILURE);
  }

  string line;
  ifstream feature_file(mCompiler_trained_autopar_model_features_path);
  while (getline(feature_file, line)) {
    model_feature_labels.push_back(line);
  }
  feature_file.close();

  feature_vector_size = model_feature_labels.size();
  instanceMat.create(1, feature_vector_size, CV_32F);

  rfmodel_trained = RTrees::create();
  rfmodel_trained = RTrees::load(mCompiler_trained_autopar_model_path);
}

/* Collect counter labels and function that were adv-profiled */
void Predictor::gatherPredictionData() {
  bool is_reading_file = true;
  CSV csv_file_profiler(getProfDir() + ".csv", is_reading_file);

  vector<string> row_data;
  csv_file_profiler.readNextRow();
  row_data                      = csv_file_profiler.getRowData();
  vector<string>::iterator iter = row_data.begin();
  int col                       = 0;
  for (; iter != row_data.end(); iter++) {
    /* Hardware Counter labels are preceeded by "Hardware Event Count:" */
    string tmpstr = (*iter).substr((*iter).find(':') + 1);
    adv_profile_labels.push_back(tmpstr);
    col++;
  }
  int row = 0;
  while (csv_file_profiler.readNextRow()) {
    adv_profile_functions.push_back(csv_file_profiler.getRowData().front());
    row++;
  }
}

/* Data coming from Adv-Profile is for all the function it profiled,
 * Find the data relevant to the currect function in the CSV.
 * If found return true, else false (choose baseline compiler).
 * Get values for counters that are needed for prediction.
 * If some counter is not available then replace with zero.
 * Normalize every counter by Instruction count.
 */
bool Predictor::filterFeatures(string hotspot_name) {

  bool isHotspotCountersFound = false;

  if (find(adv_profile_functions.begin(), adv_profile_functions.end(),
           hotspot_name) != adv_profile_functions.end()) {
    isHotspotCountersFound = true;
  }

  if (!isHotspotCountersFound)
    return false;

  vector<string> counter_row;
  bool is_reading_file = true;
  CSV csv_file_profiler(getProfDir() + ".csv", is_reading_file);
  csv_file_profiler.readNextRow(); // skip labels row
  while (csv_file_profiler.readNextRow()) {
    if (hotspot_name.compare(csv_file_profiler.getRowData().front()) == 0) {
      counter_row = csv_file_profiler.getRowData();
      break;
    }
  } // while

  /* Find instruction count to normalize other counters */
  float inst_count = 0;
  string counter_label_inst_count("INST_RETIRED.ANY");
  vector<string>::iterator iter =
      find(adv_profile_labels.begin(), adv_profile_labels.end(),
           counter_label_inst_count);
  if (iter != adv_profile_labels.end()) {
    int index_instruction_count = distance(adv_profile_labels.begin(), iter);
    stringstream data_string_to_float(counter_row.at(index_instruction_count));
    data_string_to_float >> inst_count;
  } else {
    cerr << "Predictor: Can't find counter for Instruction Count" << endl;
    exit(EXIT_FAILURE);
  }

  /* Cross-check model features with profiled features and put values in the
   * prediction matrix */
  int col = 0;
  for (vector<string>::iterator iter = model_feature_labels.begin();
       iter != model_feature_labels.end(); iter++) {
    vector<string>::iterator iter2 =
        find(adv_profile_labels.begin(), adv_profile_labels.end(), *iter);
    if (iter2 != adv_profile_labels.end()) {
      int index = distance(adv_profile_labels.begin(), iter2);
      stringstream data_string_to_float(counter_row.at(index));
      float tmpfloat = 0;
      data_string_to_float >> tmpfloat;
      instanceMat.at<float>(0, col) =
          (float)((tmpfloat * 1000) /
                  inst_count); // Normalize per kilo instructions
    } else {
      /* Put zero if feature is not present in the profile */
      instanceMat.at<float>(0, col) = 0;
    }
    col++;
  } // for
  return isHotspotCountersFound;
}

void Predictor::predictCandidate() {
  if (hotspot_extractor_to_predictor_set.begin() ==
      hotspot_extractor_to_predictor_set.end()) {
    string line;
    ifstream hotspotlistfile(getDataFolderPath() + mCompiler_hotspotlist_file);
    while (getline(hotspotlistfile, line)) {
      hotspot_extractor_to_predictor_set.insert(line);
    }
    hotspotlistfile.close();
  }

  set<string>::iterator iters = hotspot_extractor_to_predictor_set.begin();
  /* Loop through every hotspot to make a prediction.
   * If the hotspot was too small/adv-profiler does not have counters for it,
   * then choose the baseline compiler as default.
   * If the predicted candidate not enabled, choose baseline compiler as well.
   */
  for (; iters != hotspot_extractor_to_predictor_set.end(); iters++) {
    string hotspot_name = *iters;
    /* If counters found for this hotspot */
    if (filterFeatures(hotspot_name)) {
      int target_compiler = rfmodel_trained->predict(instanceMat);
      cout << "Hotspot: " << hotspot_name << ", ML Prediction: "
           << compiler_keyword[(compiler_type)target_compiler];
      /* Check if predicted compiler is enabled */
      if (compiler_candidate[(compiler_type)target_compiler]) {
        cout << ", Choosing: "
             << compiler_keyword[(compiler_type)target_compiler] << endl;
        predicted_compiler.insert(pair<string, compiler_type>(
            hotspot_name, (compiler_type)target_compiler));
      } else {
        cout << ", Choosing: " << compiler_keyword[compiler_ICC] << endl;
        predicted_compiler.insert(
            pair<string, compiler_type>(hotspot_name, compiler_ICC));
      }
    } else { // Can't find counters
      cout << "Hotspot: " << hotspot_name << ", Can't find counters." << endl;
      predicted_compiler.insert(
          pair<string, compiler_type>(hotspot_name, compiler_ICC));
    }
    instanceMat.setTo(0); // clean InstanceMat for next hotspot
  }                       // for
}

Predictor::Predictor() {
  if (mCompiler_enabled_options[AUTO_PARALLEL])
    loadAutoParModel();
  else
    loadModel();
  gatherPredictionData();
  predictCandidate();
}
