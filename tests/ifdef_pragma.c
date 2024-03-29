#include <math.h>
#include <omp.h>
#include <stdio.h>
extern void external();
int X    = 55;
int glob = 99;
int yo(int x, int y) { return x * y; }
int foo(int);
int bar(int *, int);

int main() {
  int i, j, k;
  long long sum1 = 0, sum2 = 0;

#if (defined(_OPENMP))
  #pragma omp parallel for
#endif
  for (i = 0; i < 1000; i++) {
    //printf("Threads: %d\n", omp_get_thread_num());
    for (k = 0; k < 10000; k++)
      sum1 += i + k + pow(i, k);
#if (defined(_OPENMP))
    #pragma omp critical
#endif
    { glob++; }
  }
  printf("sum = %d\n", sum1);
  if (sum1 = 0) {
    for (j = 0; j < 10; j++) {
      sum2 = yo(sum2, j);
      foo(sum2);
    }
  }
  bar(&sum1, sum2);
  return 0;
}

int foo(int i) { return log(i); }
int bar(int *i, int j) { return pow(*i, j); }
