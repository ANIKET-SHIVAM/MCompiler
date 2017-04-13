
/*
 * This is an executable test containing a number of loops to measure
 * the performance of a compiler. Arrays' length is LEN by default
 * and if you want a different array length, you should replace every 
 * LEN by your desired number which must be a multiple of 40. If you 
 * want to increase the number of loop calls to have a longer run time
 * you have to manipulate the constant value ntimes. There is a dummy
 * function called in each loop to make all computations appear required.
 * The time to execute this function is included in the time measurement 
 * for the output but it is neglectable.
 *
 *  The output includes three columns:
 *	Loop:		The name of the loop
 *	Time(Sec): 	The time in seconds to run the loop
 *	Checksum:	The checksum calculated when the test has run
 *
 * In this version of the codelets arrays are static type.
 *
 * All functions/loops are taken from "TEST SUITE FOR VECTORIZING COMPILERS"
 * by David Callahan, Jack Dongarra and David Levine except those whose 
 * functions' name have 4 digits.
 */

#if HAVE_ICC
#pragma auto_inline(off)
#endif

#define LEN 32000
#define LEN2 180

#define ntimes 200000

#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <sys/param.h>
#include <sys/times.h>
#include <sys/types.h>
#include <time.h>
#include <malloc.h>
#include <string.h>
#include <assert.h>
#include <xmmintrin.h>

//#include <builtins.h>


#define TYPE float

#define lll LEN


__attribute__ ((aligned(16))) TYPE X[lll],Y[lll],Z[lll],U[lll],V[lll];


//float* __restrict__ array;
float array[LEN2*LEN2] __attribute__((aligned(16)));

float x[LEN] __attribute__((aligned(16)));
float temp;
int temp_int;


__attribute__((aligned(16))) float a[LEN],b[LEN],c[LEN],d[LEN],e[LEN],
                                   aa[LEN2][LEN2],bb[LEN2][LEN2],cc[LEN2][LEN2],tt[LEN2][LEN2];


int indx[LEN] __attribute__((aligned(16)));


float* __restrict__ xx;
float* yy;

int dummy(float[LEN], float[LEN], float[LEN], float[LEN], float[LEN], float[LEN2][LEN2], float[LEN2][LEN2], float[LEN2][LEN2], float);

int set1d(float arr[LEN], float value, int stride)
{
	if (stride == -1) {
		for (int i = 0; i < LEN; i++) {
			arr[i] = 1. / (float) (i+1);
		}
	} else if (stride == -2) {
		for (int i = 0; i < LEN; i++) {
			arr[i] = 1. / (float) ((i+1) * (i+1));
		}
	} else {
		for (int i = 0; i < LEN; i += stride) {
			arr[i] = value;
		}
	}
	return 0;
}

int set2d(float arr[LEN2][LEN2], float value, int stride)
{

//  -- initialize two-dimensional arraysft

	if (stride == -1) {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				arr[i][j] = 1. / (float) (i+1);
			}
		}
	} else if (stride == -2) {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				arr[i][j] = 1. / (float) ((i+1) * (i+1));
			}
		}
	} else {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j += stride) {
				arr[i][j] = value;
			}
		}
	}
	return 0;
}

void check(int name){

	float suma = 0;
	float sumb = 0;
	float sumc = 0;
	float sumd = 0;
	float sume = 0;
	for (int i = 0; i < LEN; i++){
		suma += a[i];
		sumb += b[i];
		sumc += c[i];
		sumd += d[i];
		sume += e[i];
	}
	float sumaa = 0;
	float sumbb = 0;
	float sumcc = 0;
	for (int i = 0; i < LEN2; i++){
		for (int j = 0; j < LEN2; j++){
			sumaa += aa[i][j];
			sumbb += bb[i][j];
			sumcc += cc[i][j];

		}
	}
	float sumarray = 0;
	for (int i = 0; i < LEN2*LEN2; i++){
		sumarray += array[i];
	}

	if (name == 1) printf("%f \n",suma);
	if (name == 2) printf("%f \n",sumb);
	if (name == 3) printf("%f \n",sumc);
	if (name == 4) printf("%f \n",sumd);
	if (name == 5) printf("%f \n",sume);
	if (name == 11) printf("%f \n",sumaa);
	if (name == 22) printf("%f \n",sumbb);
	if (name == 33) printf("%f \n",sumcc);
	if (name == 0) printf("%f \n",sumarray);
	if (name == 12) printf("%f \n",suma+sumb);
	if (name == 25) printf("%f \n",sumb+sume);
	if (name == 13) printf("%f \n",suma+sumc);
	if (name == 123) printf("%f \n",suma+sumb+sumc);
	if (name == 1122) printf("%f \n",sumaa+sumbb);
	if (name == 112233) printf("%f \n",sumaa+sumbb+sumcc);
	if (name == 111) printf("%f \n",sumaa+suma);
	if (name == -1) printf("%f \n",temp);
	if (name == -12) printf("%f \n",temp+sumb);

}

int init(char* name)
{
	float any=0.;
	float zero=0.;
	float half=.5;
	float one=1.;
	float two=2.;
	float small = .000001;
	int unit =1;
	int frac=-1;
	int frac2=-2;

	if (!strcmp(name, "s242 ")) {
		set1d(a,small,unit);
		set1d(b,small,unit);
		set1d(c,small,unit);
		set1d(d,small,unit);
	} else if (!strcmp(name, "s112 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s312 ")) {
		set1d(a,1.000001,unit);
	} else {
	}
	return 0;
}

void set(int* ip, float* s1, float* s2){
	xx = (float*) memalign(16, LEN*sizeof(float));
	printf("\n");
	for (int i = 0; i < LEN; i = i+5){
		ip[i]	= (i+4);
		ip[i+1] = (i+2);
		ip[i+2] = (i);
		ip[i+3] = (i+3);
		ip[i+4] = (i+1);

	}

	set1d(a, 1.,1);
	set1d(b, 1.,1);
	set1d(c, 1.,1);
	set1d(d, 1.,1);
	set1d(e, 1.,1);
	set2d(aa, 0.,-1);
	set2d(bb, 0.,-1);
	set2d(cc, 0.,-1);

	for (int i = 0; i < LEN; i++){
		indx[i] = (i+1) % 4+1;
	}
	*s1 = 1.0;
	*s2 = 2.0;

}

/* ---------------------------------------------------------------------- */

int s242(float s1, float s2)
{

//	node splitting

	clock_t start_t, end_t, clock_dif; double clock_dif_sec;


	init( "s242 ");
	start_t = clock();

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN; ++i) {
			a[i] = a[i - 1] + s1 + s2 + b[i] + c[i] + d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	end_t = clock(); clock_dif = end_t - start_t;
	clock_dif_sec = (double) (clock_dif/1000000.0);
	printf("S242\t %.2f \t\t", clock_dif_sec);;
	check(1);
	return 0;
}
int s2275()
{

//	loop distribution is needed to be able to interchange

	clock_t start_t, end_t, clock_dif; double clock_dif_sec;


	init( "s275 ");
	start_t = clock();

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				aa[j][i] = aa[j][i] + bb[j][i] * cc[j][i];
			}
			a[i] = b[i] + c[i] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	end_t = clock(); clock_dif = end_t - start_t;
	clock_dif_sec = (double) (clock_dif/1000000.0);
	printf("S2275\t %.2f \t\t", clock_dif_sec);;
	check(11);
	return 0;
}
int s312()
{

//	reductions
//	product reduction

	clock_t start_t, end_t, clock_dif; double clock_dif_sec;


	init( "s312 ");
	start_t = clock();

	float prod;
	for (int nl = 0; nl < ntimes; nl++) {
		prod = (float)1.;
		for (int i = 0; i < LEN; i++) {
			prod *= a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, prod);
	}
	end_t = clock(); clock_dif = end_t - start_t;
	clock_dif_sec = (double) (clock_dif/1000000.0);
	printf("S312\t %.2f \t\t", clock_dif_sec);;
	temp = prod;
	check(-1);
	return 0;
}
int s317()
{

//	reductions
//	product reductio vectorize with
//	1. scalar expansion of factor, and product reduction
//	2. closed form solution: q = factor**n

	clock_t start_t, end_t, clock_dif; double clock_dif_sec;


	init( "s317 ");
	start_t = clock();

	float q;
	for (int nl = 0; nl < 2*ntimes; nl++) {
		q = (float)1.;
		for (int i = 0; i < LEN/2; i++) {
			q *= (float).99;
		}
		dummy(a, b, c, d, e, aa, bb, cc, q);
	}
	end_t = clock(); clock_dif = end_t - start_t;
	clock_dif_sec = (double) (clock_dif/1000000.0);
	printf("S317\t %.2f \t\t", clock_dif_sec);;
	temp = q;
	check(-1);
	return 0;
}
int s112()
{

//	linear dependence testing
//	loop reversal

	clock_t start_t, end_t, clock_dif; double clock_dif_sec;


	init( "s112 ");
	start_t = clock();

	for (int nl = 0; nl < ntimes; nl++) {
//		#pragma vector always
		for (int i = LEN - 2; i >= 0; i--) {
			a[i+1] = a[i] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	end_t = clock(); clock_dif = end_t - start_t;
	clock_dif_sec = (double) (clock_dif/1000000.0);
	printf("S112\t %.2f \t\t", clock_dif_sec);;
	check(1);
	return 0;
}

int main(){
	clock_t start_t, end_t, clock_dif; double clock_dif_sec;
	int n1 = 1;
	int n3 = 1;
	int* ip = (int *) memalign(16, LEN*sizeof(float));
	float s1,s2;
	set(ip, &s1, &s2);
	printf("Loop \t Time(Sec) \t Checksum \n");

	start_t = clock();
	//Better with icc
	printf("For ICC:\n");
	s242(s1,s2);
	s2275();

	//Better with gcc
	printf("For GCC:\n");
	s112();

	//Better with llvm
	printf("For LLVM:\n");
	s312();
	s317();	

	end_t = clock(); clock_dif = end_t - start_t;
	clock_dif_sec = (double) (clock_dif/1000000.0);
	printf("Total running time:\t %.5f \n", clock_dif_sec);

	return 0;
}

