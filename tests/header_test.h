#ifndef HEADER_TEST_H_
#define HEADER_TEST_H_
#include <stdio.h>
#include <math.h>
#include <omp.h>
extern void external();
int X=55;
int glob=99;
int yo(int x, int y){
	return x*y;
}
int foo(int);
int bar(int*,int);
#endif
