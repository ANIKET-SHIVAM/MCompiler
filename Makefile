CCi = icc
CCg = gcc-5
CCl = clang

noopt = -O0 -g -fpic
flags= -Ofast -std=c99 -fno-inline-functions -g -fpic
libs = -lm

all : profile combine test run


dummy_gcc.o : dummy.c
	$(CCg) -c dummy.c -o dummy_gcc.o

run_tsc_llvm : tsc_llvm.o dummy_llvm.o tsc_llvm.s
	$(CCl) $(noopt) dummy_llvm.o tsc_llvm.o -o run_tsc_llvm $(libs)

tsc_llvm.o : tsc.c
	$(CCl) $(flags) -c tsc.c -o tsc_llvm.o 

tsc_llvm.s : tsc.c dummy_llvm.o
	$(CCl) $(flags) tsc.c -S -mllvm --x86-asm-syntax=intel -o tsc_llvm.s 

dummy_llvm.o : dummy.c
	$(CCl) -c dummy.c -o dummy_llvm.o

run :
	./meta_out

clean :
	rm -f obj/* 

.PHONY: all profile combine test run clean 
