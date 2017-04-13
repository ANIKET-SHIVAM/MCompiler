CC = g++
FLAGS = -std=c++11 -g

EXTRACTOR_PATH = src/extractor
PROFILER_PATH  = src/profiler
COMBINER_PATH  = src/combiner
TESTER_PATH    = src/tester
DRIVER_PATH    = src/driver

OBJS = objs
BIN  = bin

EXTRACTOR_COMPILE_FLAGS = -I/home/aniket/meta_compiler/tools/rose/boost_1_61_0/include \
	-I/home/aniket/meta_compiler/tools/rose/rose_build/include/rose
EXTRACTOR_LD_FLAGS = -L/home/aniket/meta_compiler/tools/rose/rose_build/lib/ \
	-lrose -lboost_iostreams -lboost_system

OBJS_EXTRACTOR = $(OBJS)/extractor.o
SRC_EXTRACTOR  = $(EXTRACTOR_PATH)/extractor.cpp 

extractor: $(OBJS_EXTRACTOR)
	$(CC) $(OBJS_EXTRACTOR) $(EXTRACTOR_LD_FLAGS) -o $(BIN)/$@

$(OBJS_EXTRACTOR): $(SRC_EXTRACTOR)
	$(CC) $(FLAGS) $(EXTRACTOR_COMPILE_FLAGS) $(SRC_EXTRACTOR) -c -o $@

all: extract #profiler combiner tester driver
