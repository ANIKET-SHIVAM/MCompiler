#include<stdio.h>
#include <omp.h>

#define N 100000

int bucket[N];
/* Comment this and MC works */
#pragma omp threadprivate(bucket)
int bucket2[N];

int main(){
  int i=0, j=0;  
  #pragma omp parallel private(i,j)  
  {
    for(i=0;i<N;i++)
      bucket[i] = i;

    #pragma omp for
    for(i=0;i<N;i++)
      for(j=0;j<N;j++)
        bucket2[bucket[i]] = i*j;
  }
  long checksum = 0;
  for(i=0;i<N;i++)
    checksum += bucket2[i];
  printf("Checksum = %ld\n", checksum);
  return 0;
}
