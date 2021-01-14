#include<stdlib.h>
#include<stdio.h>
#include<omp.h>
#define NI 800
#define NJ 900
#define NK 1100
#define NL 1200
#define DATA_TYPE double

int main() {

  int i, j, k, l;
  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;

  double **A,**B,**C,**D,**tmp;
  double start, end;
  A = (double**)malloc(sizeof(DATA_TYPE*)*ni);
  B = (double**)malloc(sizeof(DATA_TYPE*)*nk);
  C = (double**)malloc(sizeof(DATA_TYPE*)*nj);
  D = (double**)malloc(sizeof(DATA_TYPE*)*ni);
  tmp = (double**)malloc(sizeof(DATA_TYPE*)*ni);
  #pragma MC skiploop
  for (i = 0; i < ni; i++){
    A[i] = (double*)malloc(sizeof(DATA_TYPE)*nk);
    for (j = 0; j < nk; j++)
      A[i][j] = (DATA_TYPE) ((i*j+1) % ni) / ni;
  }
  #pragma MC skiploop
  for (i = 0; i < nk; i++){
    B[i] = (double*)malloc(sizeof(DATA_TYPE)*nj);
    for (j = 0; j < nj; j++)
      B[i][j] = (DATA_TYPE) (i*(j+1) % nj) / nj;
  }
  #pragma MC skiploop
  for (i = 0; i < nj; i++){
    C[i] = (double*)malloc(sizeof(DATA_TYPE)*nl);
    for (j = 0; j < nl; j++)
      C[i][j] = (DATA_TYPE) ((i*(j+3)+1) % nl) / nl;
  }
  #pragma MC skiploop
  for (i = 0; i < ni; i++){
    D[i] = (double*)malloc(sizeof(DATA_TYPE)*nl);
    for (j = 0; j < nl; j++)
      D[i][j] = (DATA_TYPE) (i*(j+2) % nk) / nk;
  }
  #pragma MC skiploop
  for (i = 0; i < ni; i++)
    tmp[i] = (double*)malloc(sizeof(DATA_TYPE)*nj);

  DATA_TYPE alpha = 1.5;
  DATA_TYPE beta = 1.2;
  start = omp_get_wtime();
  /* D := alpha*A*B*C + beta*D */
  for (i = 0; i < NI; i++)
    for (j = 0; j < NJ; j++)
    {
      tmp[i][j] = (DATA_TYPE)(0.0);
	    for (k = 0; k < NK; ++k)
	      tmp[i][j] += alpha * A[i][k] * B[k][j];
    }
  for (i = 0; i < NI; i++)
    for (j = 0; j < NL; j++)
    {
	    D[i][j] *= beta;
	    for (k = 0; k < NJ; ++k)
	      D[i][j] += tmp[i][k] * C[k][j];
    }
  end = omp_get_wtime();

  double checksum = 0;
  #pragma MC skiploop
  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++)
      checksum += D[i][j]/1000;

  printf("Checksum = %lf; Time = %lf\n", checksum, end-start);

/* Be clean. */
  free(((void *)tmp));
  ;
  free(((void *)A));
  ;
  free(((void *)B));
  ;
  free(((void *)C));
  ;
  free(((void *)D));
  ;
  return 0;
}
