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
  while (getline(feature_file,line)) {
    feature_labels.push_back(line);
  }
  feature_file.close();

  feature_vector_size = feature_labels.size();
  instanceMat = Mat(1,feature_vector_size,CV_32F);

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
  int profiled_hotspots_count = adv_profile_counters.size();
  for (int i = 0; i < profiled_hotspots_count; i++) {
    counter_row = adv_profile_counters[i];
    string tmpfuncname = (adv_profile_counters[i]).front();
    cout << "Current func: " << adv_profile_counters[i][0] << endl;
    if (hotspot_name.compare(tmpfuncname) == 0) {
      isHotspotCountersFound = true;
      cout << "Found counters for hotspot: " << hotspot_name << endl;
      break;
    } // if
  } // for
  return isHotspotCountersFound;
}

void Predictor::predictCandidate() {
  if (hotspot_extractor_to_predictor_set.begin() == hotspot_extractor_to_predictor_set.end()) {
    string line;
    ifstream hotspotlistfile(getDataFolderPath()+mCompiler_hotspotlist_file);
    while (getline(hotspotlistfile,line)) {
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
  for (; iters != hotspot_extractor_to_predictor_set.end(); iters++){
    string hotspot_name = *iters;
    cout << "Making prediction for hotspot: " << hotspot_name << endl;
    cout << "Filter returns: " << filterFeatures(hotspot_name) << endl;
    predicted_compiler.insert(pair<string,compiler_type>(hotspot_name,compiler_ICC));
  }
  //int target_compiler = rfmodel_trained->predict(instanceMat);
}

Predictor::Predictor() {
  loadModel();
  predictCandidate();
}
