ifeq ($(OS), centos)
	CC = g++-4.9
	FLAGS = -std=c++11 -g -DOS_CENTOS

	ROSE_PATH = ${CURDIR}/tools/rose_build
	BOOST_PATH = ${CURDIR}/tools/boost_build
	ROSE_INCLUDE = -I${ROSE_PATH}/include/ -I${BOOST_PATH}/include/
	ROSE_LIB = -lROSE_DLL
else
	CC = g++
	FLAGS = -std=c++11 -g

	ROSE_PATH = ${CURDIR}/tools/rose_build
	BOOST_PATH = ${CURDIR}/tools/boost_build
	ROSE_INCLUDE = -I${ROSE_PATH}/include/rose -I${BOOST_PATH}/include/
	ROSE_LIB = -lrose
endif

OBJS = obj
BIN  = bin

EXTRACTOR_PATH    = src/extractor
PROFILER_PATH     = src/profiler
SYNTHESIZER_PATH  = src/synthesizer
TESTER_PATH       = src/tester
DRIVER_PATH       = src/driver

MC_DATA_FOLDER    = /tmp/mCompiler_data

DIRS := $(shell mkdir -p ${CURDIR}/$(OBJS) &&  mkdir -p ${CURDIR}/$(BIN))
  
all: extractor profiler synthesizer tester driver
	
##### EXTRACTOR #####
EXTRACTOR_COMPILE_FLAGS = -I${CURDIR}/src $(ROSE_INCLUDE)
EXTRACTOR_LD_FLAGS = -L${ROSE_PATH}/lib \
	-L${BOOST_PATH}/lib $(ROSE_LIB) -lboost_iostreams -lboost_system

OBJ_EXTRACTOR = $(OBJS)/extractor.o
SRC_EXTRACTOR  = $(EXTRACTOR_PATH)/extractor.cpp 
SRC_RUN_EXTRACTOR  = $(EXTRACTOR_PATH)/run_extractor.cpp 

extractor: $(OBJ_EXTRACTOR)
#	$(CC) $(FLAGS) $(SRC_RUN_EXTRACTOR) $(OBJ_EXTRACTOR) $(OBJ_COMMON) \
	$(EXTRACTOR_LD_FLAGS) \
	$(EXTRACTOR_COMPILE_FLAGS) -o $(BIN)/$@

$(OBJ_EXTRACTOR): $(SRC_EXTRACTOR)
	$(CC) $(FLAGS) $(EXTRACTOR_COMPILE_FLAGS) $(SRC_EXTRACTOR) -c -o $@

##### PROFILER #####

PROFILER_COMPILE_FLAGS = -I${CURDIR}/src \
	$(EXTRACTOR_COMPILE_FLAGS) \
	-pthread

OBJ_PROFILER = $(OBJS)/profilerC.o
SRC_PROFILER = $(PROFILER_PATH)/profilerC.cpp 
OBJ_ADV_PROFILER = $(OBJS)/adv_profiler.o
SRC_ADV_PROFILER = $(PROFILER_PATH)/adv_profiler.cpp 

profiler: $(OBJ_PROFILER) $(OBJ_ADV_PROFILER)

$(OBJ_PROFILER): $(SRC_PROFILER)
	$(CC) $(FLAGS) $(PROFILER_COMPILE_FLAGS) $(SRC_PROFILER) -c -o $@

$(OBJ_ADV_PROFILER): $(SRC_ADV_PROFILER)
	$(CC) $(FLAGS) $(PROFILER_COMPILE_FLAGS) $(SRC_ADV_PROFILER) -c -o $@

just_profiler: $(SRC_PROFILER)
	rm -f $(OBJ_PROFILER)
	$(CC) $(FLAGS) $(PROFILER_COMPILE_FLAGS) $(SRC_PROFILER) -c -o $(OBJ_PROFILER)
	$(CC) $(OBJ_DRIVER) $(OBJ_EXTRACTOR) $(OBJ_PROFILER) $(OBJ_SYNTHESIZER) $(OBJ_COMMON) $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler

just_adv_profiler: $(SRC_ADV_PROFILER)
	rm -f $(OBJ_ADV_PROFILER)
	$(CC) $(FLAGS) $(PROFILER_COMPILE_FLAGS) $(SRC_ADV_PROFILER) -c -o $(OBJ_ADV_PROFILER)
	$(CC) $(OBJ_DRIVER) $(OBJ_EXTRACTOR) $(OBJ_PROFILER) $(OBJ_ADV_PROFILER) $(OBJ_SYNTHESIZER) $(OBJ_COMMON) $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler

##### SYNTHESIZER #####

SYNTHESIZER_COMPILE_FLAGS = -I${CURDIR}/src \
	$(EXTRACTOR_COMPILE_FLAGS)
SYNTHESIZER_LD_FLAGS = 

OBJ_SYNTHESIZER = $(OBJS)/synthesizerC.o
SRC_SYNTHESIZER = $(SYNTHESIZER_PATH)/synthesizerC.cpp 

synthesizer: $(OBJ_SYNTHESIZER)

$(OBJ_SYNTHESIZER): $(SRC_SYNTHESIZER)
	$(CC) $(FLAGS) $(SYNTHESIZER_COMPILE_FLAGS) $(SRC_SYNTHESIZER) -c -o $@

just_synthesizer: $(SRC_SYNTHESIZER)
	rm -f $(OBJ_SYNTHESIZER)
	$(CC) $(FLAGS) $(SYNTHESIZER_COMPILE_FLAGS) $(SRC_SYNTHESIZER) -c -o $(OBJ_SYNTHESIZER)
	$(CC) $(OBJ_DRIVER) $(OBJ_EXTRACTOR)  $(OBJ_PROFILER) $(OBJ_SYNTHESIZER) $(OBJ_COMMON) $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler

##### TESTER #####
OBJ_TESTER = $(OBJS)/tester.o
SRC_TESTER = $(TESTER_PATH)/tester.cpp
tester: $(OBJ_TESTER)
$(OBJ_TESTER): $(SRC_TESTER)
	$(CC) $(FLAGS) $(SRC_TESTER) $(EXTRACTOR_COMPILE_FLAGS) -c -o $@

##### DRIVER #####

DRIVER_COMPILE_FLAGS = $(EXTRACTOR_COMPILE_FLAGS)
DRIVER_LD_FLAGS      = $(EXTRACTOR_LD_FLAGS) -pthread

OBJ_DRIVER = $(OBJS)/driver.o
SRC_DRIVER = $(DRIVER_PATH)/driver.cpp 

OBJ_COMMON = $(OBJS)/common.o
$(OBJ_COMMON): src/driver/common.cpp
	$(CC) $(FLAGS) src/driver/common.cpp $(ROSE_INCLUDE) -c -o $@

driver: $(OBJ_DRIVER) $(OBJ_EXTRACTOR) $(OBJ_PROFILER) $(OBJ_ADV_PROFILER) $(OBJ_SYNTHESIZER) $(OBJ_COMMON) $(OBJ_TESTER)
	$(CC) $^ $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler
$(OBJ_DRIVER): $(SRC_DRIVER)
	$(CC) $(FLAGS) $(DRIVER_COMPILE_FLAGS) $(SRC_DRIVER) -c -o $@

just_driver: $(OBJ_EXTRACTOR) $(OBJ_PROFILER) $(OBJ_ADV_PROFILER) $(OBJ_SYNTHESIZER) $(OBJ_COMMON) $(OBJ_TESTER)
	rm -f $(OBJ_DRIVER)
	$(CC) $(FLAGS) $(DRIVER_COMPILE_FLAGS) $(SRC_DRIVER) -c -o $(OBJ_DRIVER)
	$(CC) $(OBJ_DRIVER) $^ $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler

##### CLEAN #####
clean:
	rm -f $(OBJS)/* $(BIN)/*
clean_data_folder:
	rm -rf $(MC_DATA_FOLDER)
  
.PHONY: all dirs extractor profiler synthesizer tester driver clean
