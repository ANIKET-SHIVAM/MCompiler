#include <stdio.h>
#include <math.h>
int X=55;
int glob=99;
extern void external();

int main(){
	int i,j,k,sum1=0,sum2=0;
	for(i=0;i<10;i++){
//		i++;
		for(k=0;k<10;k++)
			sum1+=i+k;
	}
	for(j=0;j<10;j++){
		sum2+=j;
		foo(sum2);
	}
	bar(sum1,sum2);
	return 0;
}

int foo(int i){
	return log(i);
}
int bar(int i, int j){
	return pow(i,j);
}