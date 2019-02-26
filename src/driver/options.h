#ifndef OPTIONS_H
#define OPTIONS_H

#include "common.h"
#include "optionparser.h"

struct Arg : public option::Arg {
  static void printError(const char *msg1, const option::Option &opt,
                         const char *msg2) {
    fprintf(stderr, "%s", msg1);
    fwrite(opt.name, opt.namelen, 1, stderr);
    fprintf(stderr, "%s", msg2);
  }
  static option::ArgStatus Unknown(const option::Option &option, bool msg) {
    if (msg)
      printError("Unknown option '", option, "'\n");
    return option::ARG_ILLEGAL;
  }
  static option::ArgStatus Required(const option::Option &option, bool msg) {
    if (option.arg != 0)
      return option::ARG_OK;
    if (msg)
      printError("Option '", option, "' requires an argument\n");
    return option::ARG_ILLEGAL;
  }
  static option::ArgStatus Numeric(const option::Option &option, bool msg) {
    char *endptr = 0;
    if (option.arg != 0 && strtol(option.arg, &endptr, 10)) {
    };
    if (endptr != option.arg && *endptr == 0)
      return option::ARG_OK;
    if (msg)
      printError("Option '", option, "' requires a numeric argument\n");
    return option::ARG_ILLEGAL;
  }
};
// clang-format off
const option::Descriptor usage[] = {
  {UNKNOWN            , 0, ""  , ""              ,Arg::None     , "Usage:  mCompiler <input_files> [options] [-o output]\nOptions:" },
  {HELP               , 0, "h" , "help"          ,Arg::None     , "    -h,--help                Print usage" },
  {EXTRACT            , 0, ""  , "noextract"     ,Arg::None     , "    --[no]extract            Extract hotspots" },
  {PROFILE            , 0, ""  , "noprofile"     ,Arg::None     , "    --[no]profile            Profile extracted hotspots" },
  {SYNTHESIZE         , 0, ""  , "nosynthesize"  ,Arg::None     , "    --[no]synthesize         Combine best performing hotspots to generate binary" },
  {ADV_PROFILE        , 0, ""  , "adv-profile"   ,Arg::None     , "    --adv-profile            Advanced Profiling" },
  {POWER_PROFILE      , 0, ""  , "power-profile" ,Arg::None     , "    --power-profile          Power Profiling" },
  {PREDICT            , 0, ""  , "predict"       ,Arg::None     , "    --predict                Predict candidate using ML" },
  {TEST               , 0, ""  , "test"          ,Arg::None     , "    --test                   Test performance compared to other compilers"
                                                                                                " optimized code" },
  {PARALLEL           , 0, ""  , "parallel"      ,Arg::None     , "    --parallel               Generate multi-threaded code based on OpenMP directives\n"
                                                                  "                             Default: Serial code generation (with vectorization)" },
  {AUTO_PARALLEL      , 0, ""  , "auto-parallel" ,Arg::None     , "    --auto-parallel          Auto-parallelize the hotspots" },
  {EXTRACTKERNEL      , 0, ""  , "extractkernel" ,Arg::None     , "    --extractkernel          Extract consecutive loop nests, if possible." },
  {PREFETCH           , 0, ""  , "prefetch"      ,Arg::None     , "    --prefetch               Enable software data prefetching" },
  {PROFILE_COUNT      , 0, ""  , "profile-runs"  ,Arg::Numeric  , "    --profile-runs=<num>     Number of time profiler should run the program to"
                                                                                                " collect data. Default: 3" },
  {INPUT_PROFILE      , 0, ""  , "input"         ,Arg::Required , "    --input=<args>           Input to the program"
                                                                                                " Needed to generate profiling information" },
  {FILE_PREDICT       , 0, ""  , "predict-model" ,Arg::Required , "    --predict-model=<args>   Path to the trained ML model. Default: mC_trained_model.yml" },
  {HASWELL            , 0, ""  , "haswell"       ,Arg::None     , "    --haswell                Compile for Intel Haswell processor. Default: Skylake" },
  {KNL                , 0, ""  , "knl"           ,Arg::None     , "    --knl                    Compile for Intel Knights Landing processor. Default: Skylake" },
  {SKYLAKE            , 0, ""  , "skylake"       ,Arg::None     , "    --skylake                Compile for Intel Skylake processor." },
  {C99                , 0, ""  , "c99"           ,Arg::None     , "    --c99                    Conforms to ISO C99 standards. Default: C11" },
  {JOBS               , 0, "j" , "jobs"          ,Arg::None     , "    -j                       Compile hotspots in parallel" },
  {COMPILE_TO_OBJECT  , 0, "c" , "compile"       ,Arg::None     , "    -c[<arg>]                Compile to object file" },
  {OUTPUT_BINARY      , 0, "o" , "output"        ,Arg::Required , "    -o[<arg>]                Output object/binary name" },
  {INCLUDE_PATH       , 0, "I" , "include"       ,Arg::Required , "    -I[<arg>]                Directory to include file search path" },
  {LINKER_PATH        , 0, "L" , "link"          ,Arg::Required , "    -L[<arg>]                Directory to search for libraries" },
  {LIBS_PATH          , 0, "l" , "libs"          ,Arg::Required , "    -l[<arg>]                Instruct the linker to link in the -l<string> library" },
  {MACRO_DEFS         , 0, "D" , "DEFS"          ,Arg::Required , "    -D[<arg>]                Macro definition" },
  {MC_DEBUG           , 0, ""  , "debug"         ,Arg::None     , "    --debug                  Output mCompiler workflow" },
  {MC_INFO            , 0, ""  , "info"          ,Arg::None     , "    --info                   Print information for mCompiler workflow" },
  {NOVEC              , 0, ""  , "novec"         ,Arg::None     , "    --novec                  Disable vectorizer" },
  {0, 0, 0, 0, 0, 0}
};
// clang-format on
void set_mCompiler_options(int argc, char *argv[]) {
  mCompiler_enabled_options = {
      {EXTRACT, true},
      {PROFILE, true},
      {SYNTHESIZE, true},
      {ADV_PROFILE, false},
      {POWER_PROFILE, false},
      {PREDICT, false},
      {TEST, false},
      {PARALLEL, false},
      {AUTO_PARALLEL, false},
      {EXTRACTKERNEL, false},
      {PREFETCH, false},
      {HASWELL, false},
      {KNL, false},
      {SKYLAKE, true},
      {C99, false},
      {JOBS, false},
      {COMPILE_TO_OBJECT, false},
      {MC_DEBUG, false},
      {MC_INFO, false},
      {NOVEC, false},
  };
  argc -= (argc > 0);
  argv += (argc > 0); // skip program name argv[0] if present
  option::Stats stats(usage, argc, argv);

#ifdef __GNUC__
  // GCC supports C99 VLAs for C++ with proper constructor calls.
  option::Option options[stats.options_max], buffer[stats.buffer_max];
#else
  option::Option *options =
      (option::Option *)calloc(stats.options_max, sizeof(option::Option));
  option::Option *buffer =
      (option::Option *)calloc(stats.buffer_max, sizeof(option::Option));
#endif

  option::Parser parse(true, usage, argc, argv, options, buffer);

  if (parse.error()) {
    cout << "Invalid command line option" << endl;
    exit(EXIT_FAILURE);
  }

  /* After Help option is printed in case no args or -help flag */
  if (options[HELP] || argc == 0) {
    int columns = getenv("COLUMNS") ? atoi(getenv("COLUMNS")) : 120;
    option::printUsage(fwrite, stdout, usage, columns);
    exit(EXIT_FAILURE);
  }

  bool postSourceFlags = false;
  string tmpstr        = "";

  for (int i = 0; i < parse.optionsCount(); ++i) {
    option::Option &opt = buffer[i];
    switch (opt.index()) {
    case EXTRACT:
      mCompiler_enabled_options[EXTRACT]    = false;
      mCompiler_enabled_options[PROFILE]    = false;
      mCompiler_enabled_options[SYNTHESIZE] = false;
      break;
    case PROFILE:
      mCompiler_enabled_options[PROFILE]    = false;
      mCompiler_enabled_options[SYNTHESIZE] = false;
      break;
    case SYNTHESIZE:
      mCompiler_enabled_options[SYNTHESIZE] = false;
      fprintf(stdout, "--numeric with argument '%s'\n", opt.arg);
      break;
    case ADV_PROFILE:
      mCompiler_enabled_options[ADV_PROFILE] = true;
      break;
    case POWER_PROFILE:
      mCompiler_enabled_options[POWER_PROFILE] = true;
      mCompiler_profiler_runs                  = 0;
      break;
    case PREDICT:
      mCompiler_enabled_options[PREDICT]     = true;
      mCompiler_enabled_options[ADV_PROFILE] = true;
      break;
    case TEST:
      mCompiler_enabled_options[TEST] = true;
      break;
    case PARALLEL:
      mCompiler_enabled_options[PARALLEL] = true;
      break;
    case AUTO_PARALLEL:
      mCompiler_enabled_options[AUTO_PARALLEL] = true;
      mCompiler_enabled_options[PARALLEL]      = true;
      break;
    case EXTRACTKERNEL:
      mCompiler_enabled_options[EXTRACTKERNEL] = true;
      break;
    case PREFETCH:
      mCompiler_enabled_options[PREFETCH] = true;
      break;
    case COMPILE_TO_OBJECT:
      mCompiler_enabled_options[COMPILE_TO_OBJECT] = true;
      break;
    case PROFILE_COUNT:
      mCompiler_profiler_runs = atoi(opt.arg);
      break;
    case INPUT_PROFILE:
      mCompiler_profiler_input = opt.arg;
      break;
    case FILE_PREDICT:
      mCompiler_trained_model_path = opt.arg;
      break;
    case HASWELL:
      mCompiler_enabled_options[HASWELL] = true;
      mCompiler_enabled_options[SKYLAKE] = false;
      break;
    case KNL:
      mCompiler_enabled_options[KNL]     = true;
      mCompiler_enabled_options[SKYLAKE] = false;
      break;
    case SKYLAKE:
      mCompiler_enabled_options[SKYLAKE] = true;
      break;
    case C99:
      mCompiler_enabled_options[C99] = true;
      break;
    case JOBS:
      mCompiler_enabled_options[JOBS] = true;
      break;
    case OUTPUT_BINARY:
      tmpstr                = opt.arg;
      mCompiler_binary_path = tmpstr.substr(0, tmpstr.find_last_of('/') + 1);
      mCompiler_binary_name = tmpstr.substr(tmpstr.find_last_of('/') + 1);
      break;
    case INCLUDE_PATH:
      mCompiler_include_path += space_str + "-I" + mCompiler_curr_dir_path +
                                string(opt.arg) + space_str;
      break;
    case LINKER_PATH:
      mCompiler_link_path += space_str + "-L" + mCompiler_curr_dir_path +
                             string(opt.arg) + space_str;
      break;
    case LIBS_PATH:
      mCompiler_libraries += space_str + "-l" + string(opt.arg) + space_str;
      break;
    case MACRO_DEFS:
      mCompiler_macro_defs += space_str + "-D" + string(opt.arg) + space_str;
      break;
    case MC_DEBUG:
      mCompiler_enabled_options[MC_DEBUG] = true;
      mCompiler_enabled_options[MC_INFO]  = true;
      break;
    case MC_INFO:
      mCompiler_enabled_options[MC_INFO] = true;
      break;
    case NOVEC:
      mCompiler_enabled_options[NOVEC] = true;
      break;
    }
  }

  for (int i = 0; i < parse.nonOptionsCount(); ++i) {
    string str = parse.nonOption(i);
    if (isEndingWith(str, ".c") || isEndingWith(str, ".cc") ||
        isEndingWith(str, ".cpp") || isEndingWith(str, ".C") ||
        isEndingWith(str, ".f") || isEndingWith(str, ".f77") ||
        isEndingWith(str, ".f90") || isEndingWith(str, ".f95")) {
      /* Search for source files in the name */
      mCompiler_input_file.push_back(getAbsolutePath(str));
      postSourceFlags = true;

      string srcparentdir = str.substr(0, str.find_last_of("/"));
      if (srcparentdir.compare(str) != 0) {
        boost::erase_all(srcparentdir, "/");
        boost::erase_all(srcparentdir, ".");
        mCompiler_input_file_relpathcode.insert(
            pair<string, string>(getAbsolutePath(str), srcparentdir));
      } else {
        mCompiler_input_file_relpathcode.insert(
            pair<string, string>(getAbsolutePath(str), ""));
      }

    } else if (isEndingWith(str, ".o")) {
      /* Search for object files in the name */
      mCompiler_object_file.push_back(str);
    } else {
      cout << "Non-option argument: " << str << endl;
      if (postSourceFlags)
        mCompiler_extraPostSrcFlags += space_str + str;
      else
        mCompiler_extraPreSrcFlags += space_str + str;
    }
  }
}
#endif
