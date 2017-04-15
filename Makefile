CC = g++
FLAGS = -std=c++11 -g

EXTRACTOR_PATH = src/extractor
PROFILER_PATH  = src/profiler
COMBINER_PATH  = src/combiner
TESTER_PATH    = src/tester
DRIVER_PATH    = src/driver

OBJS = objs
BIN  = bin

all: extractor driver #profiler combiner tester

##### EXTRACTOR #####

EXTRACTOR_COMPILE_FLAGS = -I/home/aniket/meta_compiler/tools/rose/boost_1_61_0/include \
	-I/home/aniket/meta_compiler/tools/rose/rose_build/include/rose
EXTRACTOR_LD_FLAGS = -L/home/aniket/meta_compiler/tools/rose/rose_build/lib/ \
	-lrose -lboost_iostreams -lboost_system

OBJ_EXTRACTOR = $(OBJS)/extractor.o
SRC_EXTRACTOR  = $(EXTRACTOR_PATH)/extractor.cpp 
SRC_RUN_EXTRACTOR  = $(EXTRACTOR_PATH)/run_extractor.cpp 

extractor: $(SRC_RUN_EXTRACTOR) $(OBJ_EXTRACTOR)
	$(CC) $(FLAGS) $(SRC_RUN_EXTRACTOR) $(OBJ_EXTRACTOR) \
	$(EXTRACTOR_LD_FLAGS) \
	$(EXTRACTOR_COMPILE_FLAGS) -o $(BIN)/$@

$(OBJ_EXTRACTOR): $(SRC_EXTRACTOR)
	$(CC) $(FLAGS) $(EXTRACTOR_COMPILE_FLAGS) $(SRC_EXTRACTOR) -c -o $@

##### DRIVER #####

DRIVER_COMPILE_FLAGS = -I/home/aniket/meta_compiler/src \
	$(EXTRACTOR_COMPILE_FLAGS)
DRIVER_LD_FLAGS = $(EXTRACTOR_LD_FLAGS)

OBJ_DRIVER = $(OBJS)/driver.o
SRC_DRIVER = $(DRIVER_PATH)/driver.cpp 

driver: $(OBJ_DRIVER) $(OBJ_EXTRACTOR)
	$(CC) $(OBJ_DRIVER) $(OBJ_EXTRACTOR) $(DRIVER_LD_FLAGS) -o $(BIN)/mCompiler
$(OBJ_DRIVER): $(SRC_DRIVER)
	rm -f $(OBJ_DRIVER)
	$(CC) $(FLAGS) $(DRIVER_COMPILE_FLAGS) $(SRC_DRIVER) -c -o $@

clean:
	rm $(OBJS)/* $(BIN)/*


.PHONY: all extract driver clean
