CCi = icc
CCg = gcc-5
CCl = clang

#flags = -std=c99 -O3 -fivopts -flax-vector-conversions -funsafe-math-optimizations -msse4.2 
#vecflags = -loop-vectorize -mavx -Rpass=loop-vectorize 
#vecglags=-force-vector
noopt = -O0 -g -fpic
flags= -Ofast -std=c99 -fno-inline-functions -g -fpic
libs = -lm

all : run_tsc_icc run_tsc_gcc run_tsc_llvm run run_meta

run_tsc_icc : tsc_icc.o dummy_icc.o tsc_icc.s
	$(CCi) $(noopt) dummy_icc.o tsc_icc.o -o run_tsc_icc $(libs)

tsc_icc.o : tsc.c
	$(CCi) $(flags) -c tsc.c -o tsc_icc.o 

tsc_icc.s : tsc.c dummy_icc.o
	$(CCi) $(flags) tsc.c -S -o tsc_icc.s 

dummy_icc.o : dummy.c
	$(CCi) -c dummy.c -o dummy_icc.o

run_tsc_gcc : tsc_gcc.o dummy_gcc.o tsc_gcc.s
	$(CCg) $(noopt) dummy_gcc.o tsc_gcc.o -o run_tsc_gcc $(libs)

tsc_gcc.o : tsc.c
	$(CCg) $(flags) -c tsc.c -o tsc_gcc.o 

tsc_gcc.s : tsc.c dummy_gcc.o
	$(CCg) $(flags) tsc.c -S -masm=intel -o tsc_gcc.s 

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
	./run_tsc_icc
	./run_tsc_gcc
	./run_tsc_llvm
	./meta_tsc

run_meta: meta_asm.s dummy_icc.o
	$(CCi) $(noopt) dummy_icc.o meta_asm.s -o meta_tsc $(libs)
	./meta_tsc 

clean :
	rm -f *.o  run_* *.lst tsc_*.s

.PHONY: all run run_meta 
