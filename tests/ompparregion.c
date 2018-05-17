#include<stdio.h>
#include<omp.h>

#define N 15
int main(){
  int threads, id;
  int A[N];
  #pragma omp parallel
  {
    printf("Threads: %d\n", omp_get_thread_num());
    #pragma omp for
    for(int i = 0; i<N; i++){
      printf("Id: %d, i: %d\n", omp_get_thread_num(), i);
      A[i] = A[i] + i;
    }
  }
  return 0;
}
