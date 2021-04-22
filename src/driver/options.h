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
  {UNKNOWN            , 0, ""  , ""              ,Arg::None     , "Usage:  MCompiler [options] file1 [file2 ...]\nOptions:" },
  {HELP               , 0, "h" , "help"          ,Arg::None     , "    -h,--help                Print usage" },
  {EXTRACT            , 0, ""  , "noextract"     ,Arg::None     , "    --[no]extract            Extract hotspots" },
  {PROFILE            , 0, ""  , "noprofile"     ,Arg::None     , "    --[no]profile            Profile extracted hotspots" },
  {SYNTHESIZE         , 0, ""  , "nosynthesize"  ,Arg::None     , "    --[no]synthesize         Combine best performing hotspots to generate binary" },
  {ADV_PROFILE        , 0, ""  , "adv-profile"   ,Arg::None     , "    --adv-profile            Advanced Profiling" },
  {PREDICT            , 0, ""  , "predict"       ,Arg::None     , "    --predict                Predict candidate using ML" },
  {ENERGY             , 0, ""  , "energy"        ,Arg::None     , "    --energy                 Choose most energy efficient candidate" },
  {TEST               , 0, ""  , "test"          ,Arg::None     , "    --test                   Test performance compared to other compilers"
                                                                                                " optimized code" },
  {PARALLEL           , 0, ""  , "parallel"      ,Arg::None     , "    --parallel               Generate multi-threaded code based on OpenMP directives\n"
                                                                  "                             Default: Serial code generation (with vectorization)" },
  {AUTO_PARALLEL      , 0, ""  , "auto-parallel" ,Arg::None     , "    --auto-parallel          Auto-parallelize the hotspots" },
  {EXTRACTKERNEL      , 0, ""  , "extract-kernel",Arg::None     , "    --extract-kernel         Extract consecutive loop nests, if possible." },
  {RESTRICT           , 0, ""  , "restrict"      ,Arg::None     , "    --restrict               Add restrict keyword." },
  {STATICANALYSIS     , 0, ""  , "static"        ,Arg::None     , "    --static                 Perform static analysis to determine read-only values." },
  {PREFETCH           , 0, ""  , "prefetch"      ,Arg::None     , "    --prefetch               Enable software data prefetching" },
  {NOVEC              , 0, ""  , "no-vec"        ,Arg::None     , "    --no-vec                 Disable vectorization" },
  {MAXVEC              , 0, ""  ,"max-vec"       ,Arg::None     , "    --max-vec                Generate code for maximum vector length" },
  {NOPOLYHEDRAL       , 0, ""  , "disable-polyhedral",Arg::None , "    --disable-polyhedral     Disable Polyhedral Model based loop optimizers" },
  {PROFILE_COUNT      , 0, ""  , "profile-runs"  ,Arg::Numeric  , "    --profile-runs=<num>     Number of time profiler should run the program to"
                                                                                                " collect data. Default: 3" },
  {INPUT_PROFILE      , 0, ""  , "input"         ,Arg::Required , "    --input=<args>           Input to the program"
                                                                                                " Needed to generate profiling information" },
  {FILE_PREDICT       , 0, ""  , "predict-model" ,Arg::Required , "    --predict-model=<args>   Path to the trained ML model. Default: MC_trained_model.yml" },
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
  {MC_DEBUG           , 0, ""  , "debug"         ,Arg::None     , "    --debug                  Output MCompiler workflow" },
  {MC_INFO            , 0, ""  , "info"          ,Arg::None     , "    --info                   Print information for MCompiler workflow" },
  {0, 0, 0, 0, 0, 0}
};
// clang-format on
void set_MCompiler_options(int argc, char *argv[]) {
  MCompiler_enabled_options = {
      {EXTRACT, true},
      {PROFILE, true},
      {SYNTHESIZE, true},
      {ADV_PROFILE, false},
      {PREDICT, false},
      {ENERGY, false},
      {TEST, false},
      {PARALLEL, false},
      {AUTO_PARALLEL, false},
      {EXTRACTKERNEL, false},
      {RESTRICT, false},
      {STATICANALYSIS, false},
      {PREFETCH, false},
      {NOVEC, false},
      {MAXVEC, false},
      {NOPOLYHEDRAL, false},
      {HASWELL, false},
      {KNL, false},
      {SKYLAKE, true},
      {C99, false},
      {JOBS, false},
      {COMPILE_TO_OBJECT, false},
      {MC_DEBUG, false},
      {MC_INFO, false},
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
      MCompiler_enabled_options[EXTRACT]    = false;
      MCompiler_enabled_options[PROFILE]    = false;
      MCompiler_enabled_options[SYNTHESIZE] = false;
      break;
    case PROFILE:
      MCompiler_enabled_options[PROFILE]    = false;
      MCompiler_enabled_options[SYNTHESIZE] = false;
      break;
    case SYNTHESIZE:
      MCompiler_enabled_options[SYNTHESIZE] = false;
      fprintf(stdout, "--numeric with argument '%s'\n", opt.arg);
      break;
    case ADV_PROFILE:
      MCompiler_enabled_options[ADV_PROFILE] = true;
      break;
    case PREDICT:
      MCompiler_enabled_options[PREDICT]     = true;
      MCompiler_enabled_options[ADV_PROFILE] = true;
      break;
    case ENERGY:
      MCompiler_enabled_options[ENERGY] = true;
      break;
    case TEST:
      MCompiler_enabled_options[TEST] = true;
      break;
    case PARALLEL:
      MCompiler_enabled_options[PARALLEL] = true;
      break;
    case AUTO_PARALLEL:
      MCompiler_enabled_options[AUTO_PARALLEL] = true;
      MCompiler_enabled_options[PARALLEL]      = true;
      break;
    case EXTRACTKERNEL:
      MCompiler_enabled_options[EXTRACTKERNEL] = true;
      break;
    case RESTRICT:
      MCompiler_enabled_options[RESTRICT] = true;
      break;
    case STATICANALYSIS:
      MCompiler_enabled_options[STATICANALYSIS] = true;
      break;
    case PREFETCH:
      MCompiler_enabled_options[PREFETCH] = true;
      break;
    case NOVEC:
      MCompiler_enabled_options[NOVEC] = true;
      break;
    case MAXVEC:
      MCompiler_enabled_options[MAXVEC] = true;
      break;
    case NOPOLYHEDRAL:
      MCompiler_enabled_options[NOPOLYHEDRAL] = true;
      break;
    case COMPILE_TO_OBJECT:
      MCompiler_enabled_options[COMPILE_TO_OBJECT] = true;
      break;
    case PROFILE_COUNT:
      MCompiler_profiler_runs = atoi(opt.arg);
      break;
    case INPUT_PROFILE:
      MCompiler_profiler_input = opt.arg;
      break;
    case FILE_PREDICT:
      MCompiler_trained_model_path = opt.arg;
      break;
    case HASWELL:
      MCompiler_enabled_options[HASWELL] = true;
      MCompiler_enabled_options[SKYLAKE] = false;
      break;
    case KNL:
      MCompiler_enabled_options[KNL]     = true;
      MCompiler_enabled_options[SKYLAKE] = false;
      break;
    case SKYLAKE:
      MCompiler_enabled_options[SKYLAKE] = true;
      break;
    case C99:
      MCompiler_enabled_options[C99] = true;
      break;
    case JOBS:
      MCompiler_enabled_options[JOBS] = true;
      break;
    case OUTPUT_BINARY:
      tmpstr                = opt.arg;
      MCompiler_binary_path = tmpstr.substr(0, tmpstr.find_last_of('/') + 1);
      MCompiler_binary_name = tmpstr.substr(tmpstr.find_last_of('/') + 1);
      break;
    case INCLUDE_PATH:
      MCompiler_include_path += space_str + "-I" + MCompiler_curr_dir_path +
                                string(opt.arg) + space_str;
      break;
    case LINKER_PATH:
      MCompiler_link_path += space_str + "-L" + MCompiler_curr_dir_path +
                             string(opt.arg) + space_str;
      break;
    case LIBS_PATH:
      MCompiler_libraries += space_str + "-l" + string(opt.arg) + space_str;
      break;
    case MACRO_DEFS:
      MCompiler_macro_defs += space_str + "-D" + string(opt.arg) + space_str;
      break;
    case MC_DEBUG:
      MCompiler_enabled_options[MC_DEBUG] = true;
      MCompiler_enabled_options[MC_INFO]  = true;
      break;
    case MC_INFO:
      MCompiler_enabled_options[MC_INFO] = true;
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
      MCompiler_input_file.push_back(getAbsolutePath(str));
      postSourceFlags = true;

      string srcparentdir = str.substr(0, str.find_last_of("/"));
      if (srcparentdir.compare(str) != 0) {
        boost::erase_all(srcparentdir, "/");
        boost::erase_all(srcparentdir, ".");
        MCompiler_input_file_relpathcode.insert(
            pair<string, string>(getAbsolutePath(str), srcparentdir));
      } else {
        MCompiler_input_file_relpathcode.insert(
            pair<string, string>(getAbsolutePath(str), ""));
      }

    } else if (isEndingWith(str, ".o")) {
      /* Search for object files in the name */
      MCompiler_object_file.push_back(str);
    } else {
      cout << "Non-option argument: " << str << endl;
      if (postSourceFlags)
        MCompiler_extraPostSrcFlags += space_str + str;
      else
        MCompiler_extraPreSrcFlags += space_str + str;
    }
  }
}
#endif
