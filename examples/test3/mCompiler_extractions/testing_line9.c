#include <math.h>
#include <stdio.h>
#include <omp.h>
extern int X;
extern int glob;

void testing_9( int* i_primitive, int* j_primitive, int* k_primitive, int* sum1_primitive, int* sum2_primitive ){
int i = *i_primitive;
int j = *j_primitive;
int k = *k_primitive;
int sum1 = *sum1_primitive;
int sum2 = *sum2_primitive;
#pragma scop
for (i = 0; i < 10; i++) {
//		i++;
  for (k = 0; k < 10; k++) 
    sum1 += i + k;
}
#pragma endscop
*i_primitive = i;
*j_primitive = j;
*k_primitive = k;
*sum1_primitive = sum1;
*sum2_primitive = sum2;
}
