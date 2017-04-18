CC = g++
FLAGS = -std=c++11 -g

EXTRACTOR_PATH = src/extractor
PROFILER_PATH  = src/profiler
COMBINER_PATH  = src/combiner
TESTER_PATH    = src/tester
DRIVER_PATH    = src/driver

OBJS = objs
BIN  = bin
OBJ_COMMON = $(OBJS)/common.o

all: extractor profiler driver #combiner tester

$(OBJ_COMMON): src/driver/common.cpp
	$(CC) $(FLAGS) src/driver/common.cpp -c -o $@


##### EXTRACTOR #####

EXTRACTOR_COMPILE_FLAGS = -I/home/aniket/meta_compiler/src \
	-I/home/aniket/meta_compiler/tools/rose/boost_1_61_0/include \
	-I/home/aniket/meta_compiler/tools/rose/rose_build/include/rose
EXTRACTOR_LD_FLAGS = -L/home/aniket/meta_compiler/tools/rose/rose_build/lib/ \
	-lrose -lboost_iostreams -lboost_system

OBJ_EXTRACTOR = $(OBJS)/extractor.o
SRC_EXTRACTOR  = $(EXTRACTOR_PATH)/extractor.cpp 
SRC_RUN_EXTRACTOR  = $(EXTRACTOR_PATH)/run_extractor.cpp 

extractor: $(SRC_RUN_EXTRACTOR) $(OBJ_EXTRACTOR) $(OBJ_COMMON)
	$(CC) $(FLAGS) $(SRC_RUN_EXTRACTOR) $(OBJ_EXTRACTOR) $(OBJ_COMMON) \
	$(EXTRACTOR_LD_FLAGS) \
	$(EXTRACTOR_COMPILE_FLAGS) -o $(BIN)/$@

$(OBJ_EXTRACTOR): $(SRC_EXTRACTOR)
	$(CC) $(FLAGS) $(EXTRACTOR_COMPILE_FLAGS) $(SRC_EXTRACTOR) -c -o $@

##### PROFILER #####

PROFILER_COMPILE_FLAGS = -I/home/aniket/meta_compiler/src \
	$(EXTRACTOR_COMPILE_FLAGS)
PROFILER_LD_FLAGS = 

OBJ_PROFILER = $(OBJS)/profilerC.o
SRC_PROFILER = $(PROFILER_PATH)/profilerC.cpp 

profiler: $(OBJ_PROFILER)

$(OBJ_PROFILER): $(SRC_PROFILER) $(OBJ_COMMON)
	$(CC) $(FLAGS) $(PROFILER_COMPILE_FLAGS) $(SRC_PROFILER) -c -o $@

just_profiler: $(SRC_PROFILER) $(OBJ_COMMON)
	rm -f $(OBJ_PROFILER)
	$(CC) $(FLAGS) $(PROFILER_COMPILE_FLAGS) $(SRC_PROFILER) -c -o $(OBJ_PROFILER)
	$(CC) $(OBJ_DRIVER) $(OBJ_EXTRACTOR) $(OBJ_PROFILER) $(OBJ_COMMON) $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler

##### DRIVER #####

DRIVER_COMPILE_FLAGS = -I/home/aniket/meta_compiler/src \
	$(EXTRACTOR_COMPILE_FLAGS)
DRIVER_LD_FLAGS = $(EXTRACTOR_LD_FLAGS)

OBJ_DRIVER = $(OBJS)/driver.o
SRC_DRIVER = $(DRIVER_PATH)/driver.cpp 

driver: $(OBJ_DRIVER) $(OBJ_EXTRACTOR) $(OBJ_PROFILER) $(OBJ_COMMON)
	$(CC) $(OBJ_DRIVER) $(OBJ_PROFILER) $(OBJ_EXTRACTOR) $(OBJ_COMMON) $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler
$(OBJ_DRIVER): $(SRC_DRIVER)
	$(CC) $(FLAGS) $(DRIVER_COMPILE_FLAGS) $(SRC_DRIVER) -c -o $@

just_driver: $(OBJ_EXTRACTOR) $(SRC_PROFILER) $(OBJ_COMMON)
	rm -f $(OBJ_DRIVER)
	$(CC) $(FLAGS) $(DRIVER_COMPILE_FLAGS) $(SRC_DRIVER) -c -o $(OBJ_DRIVER)
	$(CC) $(OBJ_DRIVER) $(OBJ_EXTRACTOR) $(OBJ_PROFILER) $(OBJ_COMMON) $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler

##### CLEAN #####
clean:
	rm $(OBJS)/* $(BIN)/*


.PHONY: all extract driver clean
