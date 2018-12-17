#include "predictor.h"

/* Load trained model */
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
  instanceMat         = Mat(1, feature_vector_size, CV_32F);

  rfmodel_trained = RTrees::create();
  rfmodel_trained = RTrees::load(mCompiler_trained_model_path);
}

/* Data coming from Adv-Profile is for all the function it profiled,
 * Find the data relevant to the currect function.
 * If found return true, else false (choose baseline compiler).
 * Get values for counters that are needed for prediction.
 * If some counter is not available then replace with zero.
 * Normalize every counter by Instruction count.
 */
bool Predictor::filterFeatures(string hotspot_name) {

  vector<string> counter_row;
  bool isHotspotCountersFound = false;

  for (int i = 0; i < adv_profile_counters.size(); i++) {
    counter_row        = adv_profile_counters[i];
    string tmpfuncname = (adv_profile_counters[i]).front();
    if (hotspot_name.compare(tmpfuncname) == 0) {
      isHotspotCountersFound = true;
      cout << "Found counters for hotspot: " << hotspot_name << endl;
      break;
    } // if
  }   // for

  if (!isHotspotCountersFound)
    return false;

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
      instanceMat.at<float>(1, col) =
          (tmpfloat * 1000) / inst_count; // Normalize per kilo instructions
    } else {
      /* Put zero if feature is not present in the profile */
      instanceMat.at<float>(1, col) = 0;
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
      cout << "Making prediction for hotspot: " << hotspot_name
           << " ML Predicted: "
           << compiler_keyword[(compiler_type)target_compiler];
      /* Check if predicted compiler is enabled */
      if (compiler_candidate[(compiler_type)target_compiler]) {
        cout << " Chooses: " << compiler_keyword[(compiler_type)target_compiler]
             << endl;
        predicted_compiler.insert(pair<string, compiler_type>(
            hotspot_name, (compiler_type)target_compiler));
      } else {
        cout << " Chooses: " << compiler_keyword[compiler_ICC] << endl;
        predicted_compiler.insert(
            pair<string, compiler_type>(hotspot_name, compiler_ICC));
      }
    } else { // Can't find counters
      cout << "Making prediction for hotspot: " << hotspot_name
           << " Can't find counters." << endl;
      predicted_compiler.insert(
          pair<string, compiler_type>(hotspot_name, compiler_ICC));
    }
    instanceMat.setTo(0); // clean InstanceMat for next hotspot
  }                       // for
}

Predictor::Predictor() {
  loadModel();
  predictCandidate();
  for (int i = 0; i < adv_profile_counters.size(); i++) {
    vector<string>().swap(adv_profile_counters[i]);
  }
}
