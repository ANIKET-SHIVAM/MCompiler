#include <stdio.h>
#include <math.h>
#include <omp.h>
int X=55;
int glob=99;
extern void external();
int yo(int x, int y){
	return x*y;
}
int foo(int);
int bar(int*,int);

int main(){
	int i,j,k,sum1=0,sum2=0;
  #pragma mC skippluto
	for(i=0;i<10;i++){
		for(k=0;k<1000;k++)
			sum1+=i+k+pow(i,k);
	}
  printf("sum = %d\n", sum1);
  if(sum1 = 0){
    for(j=0;j<10;j++){
      sum2 = yo(sum2,j);
      foo(sum2);
    }
    #pragma mC skiploop
    for(j=0;j<10;j++){
      sum2 = yo(sum2,j);
      foo(sum2);
    }
  }
	for(i=0;i<10;i++){
		for(k=0;k<1000;k++)
			sum1+=i+k+pow(i,k);
	}
	bar(&sum1,sum2);
	return 0;
}

int foo(int i){
	return log(i);
}
int bar(int *i, int j){
	return pow(*i,j);
}
