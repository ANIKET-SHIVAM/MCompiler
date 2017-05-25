
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
#include <omp.h>
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

int dummy_media(short[], char[], int);

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

int set1ds(int _n, float arr[LEN], float value, int stride)
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

float sum1d(float arr[LEN]){
	float ret = 0.;
	for (int i = 0; i < LEN; i++)
		ret += arr[i];
	return ret;
}

int s471s(void)
{
// --  dummy subroutine call made in s471
	return 0;
}

float f(float a, float b){
	return a*b;
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

	if	(!strcmp(name, "s000 ")) {
	  for (int i = 0; i < lll; i++) {
            X[i] = 1+i;
            Y[i] = 2+i;
            Z[i] = 3+i;
            U[i] = 4+i;
            V[i] = 5+i;
          }
	} else if (!strcmp(name, "s111 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
		set1d(c, any,frac2);
		set1d(d, any,frac2);
		set1d(e, any,frac2);
	} else if (!strcmp(name, "s112 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s113 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s114 ")) {
		set2d(aa, any,frac);
		set2d(bb, any,frac2);
	} else if (!strcmp(name, "s115 ")) {
		set1d(a, one,unit);
		set2d(aa,small,unit);
		set2d(bb,small,unit);
		set2d(cc,small,unit);
	} else if (!strcmp(name, "s116 ")) {
		set1d(a, one,unit);
	} else if (!strcmp(name, "s118 ")) {
		set1d(a, one,unit);
		set2d(bb,small,unit);
	} else if (!strcmp(name, "s119 ")) {
		set2d(aa, one,unit);
		set2d(bb, any,frac2);
	} else if (!strcmp(name, "s121 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s122 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s123 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s124 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s125 ")) {
		set1ds(LEN*LEN, array,zero,unit);
		set2d(aa, one,unit);
		set2d(bb,half,unit);
		set2d(cc, two,unit);
	} else if (!strcmp(name, "s126 ")) {
		set2d(bb, one,unit);
		set1ds(LEN*LEN,array,any,frac);
		set2d(cc, any,frac);
	} else if (!strcmp(name, "s127 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s128 ")) {
		set1d(a,zero,unit);
		set1d(b, two,unit);
		set1d(c, one,unit);
		set1d(d, one,unit);
	} else if (!strcmp(name, "s131 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s132 ")) {
		set2d(aa, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s141 ")) {
		set1ds(LEN*LEN,array, one,unit);
		set2d(bb, any,frac2);
	} else if (!strcmp(name, "s151 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s152 ")) {
		set1d(a, one,unit);
		set1d(b,zero,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s161 ")) {
		set1d(a, one,unit);
		set1ds(LEN/2,&b[0], one,2);
		set1ds(LEN/2,&b[1],-one,2);
		set1d(c, one,unit);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s162 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s171 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s172 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s173 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s174 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s175 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s176 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s211 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s212 ")) {
		set1d(a, any,frac);
		set1d(b, one,unit);
		set1d(c, one,unit);
		set1d(d, any,frac);
	} else if (!strcmp(name, "s221 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
		set1d(d, any,frac);
	} else if (!strcmp(name, "s222 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
	} else if (!strcmp(name, "s231 ")) {
		set2d(aa, one,unit);
		set2d(bb, any,frac2);
	} else if (!strcmp(name, "s232 ")) {
		set2d(aa, one,unit);
		set2d(bb,zero,unit);
	} else if (!strcmp(name, "s233 ")) {
		set2d(aa, any,frac);
		set2d(bb, any,frac);
		set2d(cc, any,frac);
	} else if (!strcmp(name, "s234 ")) {
		set2d(aa, one,unit);
		set2d(bb, any,frac);
		set2d(cc, any,frac);
	} else if (!strcmp(name, "s235 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
		set2d(aa, one,unit);
		set2d(bb, any, frac2);
	} else if (!strcmp(name, "s241 ")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
		set1d(d, one,unit);
	} else if (!strcmp(name, "s242 ")) {
		set1d(a,small,unit);
		set1d(b,small,unit);
		set1d(c,small,unit);
		set1d(d,small,unit);
	} else if (!strcmp(name, "s243 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s244 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c,small,unit);
		set1d(d,small,unit);
	} else if (!strcmp(name, "s251 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s252 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
	} else if (!strcmp(name, "s253 ")) {
		set1d(a, one,unit);
		set1d(b,small,unit);
		set1d(c, one,unit);
		set1d(d, any,frac);
	} else if (!strcmp(name, "s254 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
	} else if (!strcmp(name, "s255 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
	} else if (!strcmp(name, "s256 ")) {
		set1d(a, one,unit);
		set2d(aa, two,unit);
		set2d(bb, one,unit);
	} else if (!strcmp(name, "s257 ")) {
		set1d(a, one,unit);
		set2d(aa, two,unit);
		set2d(bb, one,unit);
	} else if (!strcmp(name, "s258 ")) {
		set1d(a, any,frac);
		set1d(b,zero,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e,zero,unit);
		set2d(aa, any,frac);
	} else if (!strcmp(name, "s261 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
		set1d(c, any,frac2);
		set1d(d, one,unit);
	} else if (!strcmp(name, "s271 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s272 ")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, two,unit);
	} else if (!strcmp(name, "s273 ")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
		set1d(d,small,unit);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s274 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s275 ")) {
		set2d(aa, one,unit);
		set2d(bb,small,unit);
		set2d(cc,small,unit);
	} else if (!strcmp(name, "s276 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
		set1d(d, any,frac);
	} else if (!strcmp(name, "s277 ")) {
		set1d(a, one,unit);
		set1ds(LEN/2,b, one,unit);
		set1ds(LEN/2,&b[LEN/2],-one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s278 ")) {
		set1ds(LEN/2,a,-one,unit);
		set1ds(LEN/2,&a[LEN/2],one,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s279 ")) {
		set1ds(LEN/2,a,-one,unit);
		set1ds(LEN/2,&a[LEN/2],one,unit);
//		set1d(a, -one,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s2710")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s2711")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s2712")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s281 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
	} else if (!strcmp(name, "s291 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
	} else if (!strcmp(name, "s292 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
	} else if (!strcmp(name, "s293 ")) {
		set1d(a, any,frac);
	} else if (!strcmp(name, "s2101")) {
		set2d(aa, one,unit);
		set2d(bb, any,frac);
		set2d(cc, any,frac);
	} else if (!strcmp(name, "s2102")) {
		set2d(aa,zero,unit);
	} else if (!strcmp(name, "s2111")) {
//		set2d(aa, one,unit);
		set2d(aa,zero,unit);
	} else if (!strcmp(name, "s311 ")) {
		set1d(a, any,frac);
	} else if (!strcmp(name, "s312 ")) {
		set1d(a,1.000001,unit);
	} else if (!strcmp(name, "s313 ")) {
		set1d(a, any,frac);
		set1d(b, any,frac);
	} else if (!strcmp(name, "s314 ")) {
		set1d(a, any,frac);
	} else if (!strcmp(name, "s315 ")) {
		set1d(a, any,frac);
	} else if (!strcmp(name, "s316 ")) {
		set1d(a, any,frac);
	} else if (!strcmp(name, "s317 ")) {
	} else if (!strcmp(name, "s318 ")) {
		set1d(a, any,frac);
		a[LEN-1] = -two;
	} else if (!strcmp(name, "s319 ")) {
		set1d(a,zero,unit);
		set1d(b,zero,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s3110")) {
		set2d(aa, any,frac);
		aa[LEN2-1][LEN2-1] = two;
	} else if (!strcmp(name, "s3111")) {
		set1d(a, any,frac);
	} else if (!strcmp(name, "s3112")) {
		set1d(a, any,frac2);
		set1d(b,zero,unit);
	} else if (!strcmp(name, "s3113")) {
		set1d(a, any,frac);
		a[LEN-1] = -two;
	} else if (!strcmp(name, "s321 ")) {
		set1d(a, one,unit);
		set1d(b,zero,unit);
	} else if (!strcmp(name, "s322 ")) {
		set1d(a, one,unit);
		set1d(b,zero,unit);
		set1d(c,zero,unit);
	} else if (!strcmp(name, "s323 ")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s331 ")) {
		set1d(a, any,frac);
		a[LEN-1] = -one;
	} else if (!strcmp(name, "s332 ")) {
		set1d(a, any,frac2);
		a[LEN-1] = two;
	} else if (!strcmp(name, "s341 ")) {
		set1d(a,zero,unit);
		set1d(b, any,frac);
	} else if (!strcmp(name, "s342 ")) {
		set1d(a, any,frac);
		set1d(b, any,frac);
	} else if (!strcmp(name, "s343 ")) {
		set2d(aa, any,frac);
		set2d(bb, one,unit);
	} else if (!strcmp(name, "s351 ")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
		c[0] = 1.;
	} else if (!strcmp(name, "s352 ")) {
		set1d(a, any,frac);
		set1d(b, any,frac);
	} else if (!strcmp(name, "s353 ")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
		c[0] = 1.;
	} else if (!strcmp(name, "s411 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s412 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s413 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s414 ")) {
		set2d(aa, one,unit);
		set2d(bb, any,frac);
		set2d(cc, any,frac);
	} else if (!strcmp(name, "s415 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
		a[LEN-1] = -one;
	} else if (!strcmp(name, "s421 ")) {
		set1d(a, any,frac2);
	} else if (!strcmp(name, "s422 ")) {
		set1d(array,one,unit);
		set1d(a, any,frac2);
	} else if (!strcmp(name, "s423 ")) {
		set1d(array,zero,unit);
		set1d(a, any,frac2);
	} else if (!strcmp(name, "s424 ")) {
		set1d(array,one,unit);
		set1d(a, any,frac2);
	} else if (!strcmp(name, "s431 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s432 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s441 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
		set1ds(LEN/3,	&d[0],		-one,unit);
		set1ds(LEN/3,	&d[LEN/3],	zero,unit);
		set1ds(LEN/3+1, &d[(2*LEN/3)], one,unit);
	} else if (!strcmp(name, "s442 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s443 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s451 ")) {
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s452 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c,small,unit);
	} else if (!strcmp(name, "s453 ")) {
		set1d(a,zero,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "s471 ")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
		set1d(c, one,unit);
		set1d(d, any,frac);
		set1d(e, any,frac);
	} else if (!strcmp(name, "s481 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
		set1d(d, any,frac);
	} else if (!strcmp(name, "s482 ")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "s491 ")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
	} else if (!strcmp(name, "s4112")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
	} else if (!strcmp(name, "s4113")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, any,frac2);
	} else if (!strcmp(name, "s4114")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
	} else if (!strcmp(name, "s4115")) {
		set1d(a, any,frac);
		set1d(b, any,frac);
	} else if (!strcmp(name, "s4116")) {
		set1d(a, any,frac);
		set2d(aa, any,frac);
	} else if (!strcmp(name, "s4117")) {
		set1d(a,zero,unit);
		set1d(b, one,unit);
		set1d(c, any,frac);
		set1d(d, any,frac);
	} else if (!strcmp(name, "s4121")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "va	")) {
		set1d(a,zero,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "vag  ")) {
		set1d(a,zero,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "vas  ")) {
		set1d(a,zero,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "vif  ")) {
		set1d(a,zero,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "vpv  ")) {
		set1d(a,zero,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "vtv  ")) {
		set1d(a, one,unit);
		set1d(b, one,unit);
	} else if (!strcmp(name, "vpvtv")) {
		set1d(a, one,unit);
		set1d(b, any,frac);
		set1d(c, any,frac);
	} else if (!strcmp(name, "vpvts")) {
		set1d(a, one,unit);
		set1d(b, any,frac2);
	} else if (!strcmp(name, "vpvpv")) {
		set1d(a, any,frac2);
		set1d(b, one,unit);
		set1d(c,-one,unit);
	} else if (!strcmp(name, "vtvtv")) {
		set1d(a, one,unit);
		set1d(b, two,unit);
		set1d(c,half,unit);
	} else if (!strcmp(name, "vsumr")) {
		set1d(a, any,frac);
	} else if (!strcmp(name, "vdotr")) {
		set1d(a, any,frac);
		set1d(b, any,frac);
	} else if (!strcmp(name, "vbor ")) {
		set1d(a, any,frac);
		set1d(b, any,frac);
		set1d(c, one,frac);
		set1d(d, two,frac);
		set1d(e,half,frac);
		set2d(aa, any,frac);
	} else {
	}

	return 0;
}

int s000()
{

//	linear dependence testing
//	no dependence - vectorizable

	


	init( "s000 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < lll; i++) {
//			a[i] = b[i] + c[i];
//			X[i] = (Y[i] * Z[i])+(U[i]*V[i]);
			X[i] = Y[i] + 1;
		}
		dummy((float*)X, (float*)Y, (float*)Z, (float*)U, (float*)V, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S000\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.1
int s111()
{

//	linear dependence testing
//	no dependence - vectorizable

	


	init( "s111 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
//		#pragma vector always
		for (int i = 1; i < LEN; i += 2) {
			a[i] = a[i - 1] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S111\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

int s1111()
{

//	no dependence - vectorizable
//	jump in data access

	

	init("s111 ");
	double loop_timer_start = omp_get_wtime( );
	for (int nl = 0; nl < 2*ntimes; nl++) {
		for (int i = 0; i < LEN/2; i++) {
			a[2*i] = c[i] * b[i] + d[i] * b[i] + c[i] * c[i] + d[i] * b[i] + d[i] * c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	
	printf("S1111\t %.9f \t\t ", loop_timer_end - loop_timer_start);
	check(1);
	return 0;
}

// %1.1

int s112()
{

//	linear dependence testing
//	loop reversal

	


	init( "s112 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
//		#pragma vector always
		for (int i = LEN - 2; i >= 0; i--) {
			a[i+1] = a[i] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S112\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}


int s1112()
{

//	linear dependence testing
//	loop reversal

	
	

	init("s112 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = LEN - 1; i >= 0; i--) {
			a[i] = b[i] + (float) 1.;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	
	printf("S1112\t %.9f \t\t ", loop_timer_end - loop_timer_start);
	check(1);
	return 0;
}

// %1.1

int s113()
{

//	linear dependence testing
//	a(i)=a(1) but no actual dependence cycle

	


	init( "s113 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN; i++) {
			a[i] = a[0] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S113\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

int s1113()
{

//	linear dependence testing
//	one iteration dependency on a(LEN/2) but still vectorizable

	


	init( "s113 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = a[LEN/2] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1113\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.1

int s114()
{

//	linear dependence testing
//	transpose vectorization
//	Jump in data access - not vectorizable

	


	init( "s114 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < i; j++) {
				aa[i][j] = aa[j][i] + bb[i][j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}

	double loop_timer_end = omp_get_wtime( );
	
	printf("S114\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

// %1.1

int s115()
{

//	linear dependence testing
//	triangular saxpy loop

	


	init( "s115 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int j = 0; j < LEN2; j++) {
			for (int i = j+1; i < LEN2; i++) {
				a[i] -= aa[j][i] * a[j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S115\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

int s1115()
{

//	linear dependence testing
//	triangular saxpy loop

	


	init( "s115 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				aa[i][j] = aa[i][j]*cc[j][i] + bb[i][j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1115\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

// %1.1

int s116()
{

//	linear dependence testing

	


	init( "s116 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN - 5; i += 5) {
			a[i] = a[i + 1] * a[i];
			a[i + 1] = a[i + 2] * a[i + 1];
			a[i + 2] = a[i + 3] * a[i + 2];
			a[i + 3] = a[i + 4] * a[i + 3];
			a[i + 4] = a[i + 5] * a[i + 4];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S116\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.1

int s118()
{

//	linear dependence testing
//	potential dot product recursion

	


	init( "s118 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN2; i++) {
			for (int j = 0; j <= i - 1; j++) {
				a[i] += bb[j][i] * a[i-j-1];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S118\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.1

int s119()
{

//	linear dependence testing
//	no dependence - vectorizable

	
	

	init("s119 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN2; i++) {
			for (int j = 1; j < LEN2; j++) {
				aa[i][j] = aa[i-1][j-1] + bb[i][j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	
	
	printf("S119\t %.9f \t\t ", loop_timer_end - loop_timer_start);
	check(11);
	return 0;
}

int s1119()
{

//	linear dependence testing
//	no dependence - vectorizable

	
	

	init("s119 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				aa[i][j] = aa[i-1][j] + bb[i][j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	
	
	printf("S1119\t %.9f \t\t ", loop_timer_end - loop_timer_start);
	check(11);
	return 0;
}

// %1.2

int s121()
{

//	induction variable recognition
//	loop with possible ambiguity because of scalar store

	


	init( "s121 ");
	double loop_timer_start = omp_get_wtime( );

	int j;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; i++) {
			j = i + 1;
			a[i] = a[j] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S121\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.2

int s122(int n1, int n3)
{

//	induction variable recognition
//	variable lower and upper bound, and stride
//	reverse data access and jump in data access

	


	init( "s122 ");
	double loop_timer_start = omp_get_wtime( );

	int j, k;
	for (int nl = 0; nl < ntimes; nl++) {
		j = 1;
		k = 0;
		for (int i = n1-1; i < LEN; i += n3) {
			k += j;
			a[i] += b[LEN - k];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S122\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.2

int s123()
{

//	induction variable recognition
//	induction variable under an if
//	not vectorizable, the condition cannot be speculated

	


	init( "s123 ");
	double loop_timer_start = omp_get_wtime( );

	int j;
	for (int nl = 0; nl < 2*ntimes; nl++) {
		j = -1;
		for (int i = 0; i < (LEN/2); i++) {
			j++;
			a[j] = b[i] + d[i] * e[i];
			if (c[i] > (float)0.) {
				j++;
				a[j] = c[i] + d[i] * e[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S123\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.2

int s124()
{

//	induction variable recognition
//	induction variable under both sides of if (same value)

	


	init( "s124 ");
	double loop_timer_start = omp_get_wtime( );

	int j;
	for (int nl = 0; nl < ntimes; nl++) {
		j = -1;
		for (int i = 0; i < LEN; i++) {
			if (b[i] > (float)0.) {
				j++;
				a[j] = b[i] + d[i] * e[i];
			} else {
				j++;
				a[j] = c[i] + d[i] * e[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S124\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.2
int s125()
{

//	induction variable recognition
//	induction variable in two loops; collapsing possible

	


	init( "s125 ");
	double loop_timer_start = omp_get_wtime( );

	int k;
	for (int nl = 0; nl < ntimes; nl++) {
		k = -1;
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				k++;
				array[k] = aa[i][j] + bb[i][j] * cc[i][j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S125\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(0);
	return 0;
}

// %1.2
int s126()
{

//	induction variable recognition
//	induction variable in two loops; recurrence in inner loop

	


	init( "s126 ");
	double loop_timer_start = omp_get_wtime( );

	int k;
	for (int nl = 0; nl < ntimes; nl++) {
		k = 1;
		for (int i = 0; i < LEN2; i++) {
			for (int j = 1; j < LEN2; j++) {
				bb[j][i] = bb[j-1][i] + array[k-1] * cc[j][i];
				++k;
			}
			++k;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S126\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(22);
	return 0;
}

// %1.2

int s127()
{

//	induction variable recognition
//	induction variable with multiple increments

	


	init( "s127 ");
	double loop_timer_start = omp_get_wtime( );

	int j;
	for (int nl = 0; nl < 2*ntimes; nl++) {
		j = -1;
		for (int i = 0; i < LEN/2; i++) {
			j++;
			a[j] = b[i] + c[i] * d[i];
			j++;
			a[j] = b[i] + d[i] * e[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S127\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.2

int s128()
{

//	induction variables
//	coupled induction variables
//	jump in data access

	


	init( "s128 ");
	double loop_timer_start = omp_get_wtime( );

	int j, k;
	for (int nl = 0; nl < 2*ntimes; nl++) {
		j = -1;
		for (int i = 0; i < LEN/2; i++) {
			k = j + 1;
			a[i] = b[k] - d[i];
			j = k + 1;
			b[k] = a[i] + c[k];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 1.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S128\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %1.3

int s131()
{
//	global data flow analysis
//	forward substitution

	


	init( "s131 ");
	double loop_timer_start = omp_get_wtime( );

	int m  = 1;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN - 1; i++) {
			a[i] = a[i + m] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S131\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.3

int s132()
{
//	global data flow analysis
//	loop with multiple dimension ambiguous subscripts

	

	init( "s132 ");
	double loop_timer_start = omp_get_wtime( );

	int m = 0;
	int j = m;
	int k = m+1;
	for (int nl = 0; nl < LEN2*ntimes; nl++) {
		for (int i= 1; i < LEN2; i++) {
			aa[j][i] = aa[k][i-1] + b[i] * c[1];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S132\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

// %1.4

int s141()
{

//	nonlinear dependence testing
//	walk a row in a symmetric packed array
//	element a(i,j) for (int j>i) stored in location j*(j-1)/2+i

	


	init( "s141 ");
	double loop_timer_start = omp_get_wtime( );
#pragma scop
	int k;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			k = (i+1) * ((i+1) - 1) / 2 + (i+1)-1;
			for (int j = i; j < LEN2; j++) {
				array[k] += bb[j][i];
				k += j+1;
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	#pragma endscop
	double loop_timer_end = omp_get_wtime( );
	
	printf("S141\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(0);
	return 0;
}

// %1.5

int s151s(float a[LEN], float b[LEN],  int m)
{
	for (int i = 0; i < LEN-1; i++) {
		a[i] = a[i + m] + b[i];
	}
	return 0;
}

int s151()
{

//	interprocedural data flow analysis
//	passing parameter information into a subroutine

	
	init( "s151 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		s151s(a, b,  1);
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S151\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.5

int s152s(float a[LEN], float b[LEN], float c[LEN], int i)
{
	a[i] += b[i] * c[i];
	return 0;
}

int s152()
{

//	interprocedural data flow analysis
//	collecting information from a subroutine
	


	init( "s152 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			b[i] = d[i] * e[i];
			s152s(a, b, c, i);
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S152\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.6

int s161()
{

//	control flow
//	tests for recognition of loop independent dependences
//	between statements in mutually exclusive regions.

	


	init( "s161 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; ++i) {
			if (b[i] < (float)0.) {
				goto L20;
			}
			a[i] = c[i] + d[i] * e[i];
			goto L10;
L20:
			c[i+1] = a[i] + d[i] * d[i];
L10:
			;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S161\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(13);
	return 0;
}

int s1161()
{

//	control flow
//	tests for recognition of loop independent dependences
//	between statements in mutually exclusive regions.

	


	init( "s161 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; ++i) {
			if (c[i] < (float)0.) {
				goto L20;
			}
			a[i] = c[i] + d[i] * e[i];
			goto L10;
L20:
			b[i] = a[i] + d[i] * d[i];
L10:
			;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1161\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(13);
	return 0;
}

// %1.6

int s162(int k)
{
//	control flow
//	deriving assertions

	


	init( "s162 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		if (k > 0) {
			for (int i = 0; i < LEN-1; i++) {
				a[i] = a[i + k] + b[i] * c[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S162\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.7

int s171(int inc)
{

//	symbolics
//	symbolic dependence tests

	

	init( "s171 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i * inc] += b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S171\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.7

int s172( int n1, int n3)
{
//	symbolics
//	vectorizable if n3 .ne. 0

	


	init( "s172 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes*n3; nl++) {
		for (int i = n1-1; i < LEN; i += n3) {
			a[i] += b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S172\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.7

int s173()
{
//	symbolics
//	expression in loop bounds and subscripts

	


	init( "s173 ");
	double loop_timer_start = omp_get_wtime( );

	int k = LEN/2;
	for (int nl = 0; nl < ntimes*2; nl++) {
		for (int i = 0; i < LEN/2; i++) {
			a[i+k] = a[i] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S173\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.7

int s174(int M)
{

//	symbolics
//	loop with subscript that may seem ambiguous

	


	init( "s174 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes*(LEN/M); nl++) {
		for (int i = 0; i < M; i++) {
			a[i+M] = a[i] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S174\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.7

int s175(int inc)
{

//	symbolics
//	symbolic dependence tests

	


	init( "s175 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes*inc; nl++) {
		for (int i = 0; i < LEN-1; i += inc) {
			a[i] = a[i + inc] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S175\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %1.7

int s176()
{

//	symbolics
//	convolution

	


	init( "s176 ");
	double loop_timer_start = omp_get_wtime( );

	int m = LEN/2;
	for (int nl = 0; nl < (ntimes/LEN)*2; nl++) {
		for (int j = 0; j < (LEN/2); j++) {
			for (int i = 0; i < m; i++) {
				a[i] += b[i+m-j-1] * c[j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S176\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// **********************************************************
// *							    *
// *			VECTORIZATION			    *
// *							    *
// **********************************************************

// %2.1

int s211()
{

//	statement reordering
//	statement reordering allows vectorization

	


	init( "s211 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN-1; i++) {
			a[i] = b[i - 1] + c[i] * d[i];
			b[i] = b[i + 1] - e[i] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S211\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.1

int s212()
{

//	statement reordering
//	dependency needing temporary

	

	init( "s212 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; i++) {
			a[i] *= c[i];
			b[i] += a[i + 1] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S212\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

int s1213()
{

//	statement reordering
//	dependency needing temporary

	

	init( "s212 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN-1; i++) {
			a[i] = b[i-1]+c[i];
			b[i] = a[i+1]*d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1213\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.2

int s221()
{

//	loop distribution
//	loop that is partially recursive

	


	init( "s221 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN; i++) {
			a[i] += c[i] * d[i];
			b[i] = b[i - 1] + a[i] + d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S221\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

int s1221()
{

//	run-time symbolic resolution

	


	init( "s221 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 4; i < LEN; i++) {
			b[i] = b[i - 4] + a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1221\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.2

int s222()
{

//	loop distribution
//	partial loop vectorizatio recurrence in middle

	


	init( "s222 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN; i++) {
			a[i] += b[i] * c[i];
			e[i] = e[i - 1] * e[i - 1];
			a[i] -= b[i] * c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S222\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.3

int s231()
{
//	loop interchange
//	loop with data dependency

	


	init( "s231 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; ++i) {
			for (int j = 1; j < LEN2; j++) {
				aa[j][i] = aa[j - 1][i] + bb[j][i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S231\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

// %2.3

int s232()
{

//	loop interchange
//	interchanging of triangular loops

	


	init( "s232 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int j = 1; j < LEN2; j++) {
			for (int i = 1; i <= j; i++) {
				aa[j][i] = aa[j][i-1]*aa[j][i-1]+bb[j][i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 1.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S232\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

int s1232()
{

//	loop interchange
//	interchanging of triangular loops

	


	init( "s232 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int j = 0; j < LEN2; j++) {
			for (int i = j; i < LEN2; i++) {
				aa[i][j] = bb[i][j] + cc[i][j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 1.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1232\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

// %2.3

int s233()
{

//	loop interchange
//	interchanging with one of two inner loops

	


	init( "s233 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN2; i++) {
			for (int j = 1; j < LEN2; j++) {
				aa[j][i] = aa[j-1][i] + cc[j][i];
			}
			for (int j = 1; j < LEN2; j++) {
				bb[j][i] = bb[j][i-1] + cc[j][i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S233\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1122);
	return 0;
}

int s2233()
{

//	loop interchange
//	interchanging with one of two inner loops

	


	init( "s233 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN2; i++) {
			for (int j = 1; j < LEN2; j++) {
				aa[j][i] = aa[j-1][i] + cc[j][i];
			}
			for (int j = 1; j < LEN2; j++) {
				bb[i][j] = bb[i-1][j] + cc[i][j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2233\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1122);
	return 0;
}

// %2.3
int s235()
{

//	loop interchanging
//	imperfectly nested loops

	


	init( "s235 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			a[i] += b[i] * c[i];
			for (int j = 1; j < LEN2; j++) {
				aa[j][i] = aa[j-1][i] + bb[j][i] * a[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S235\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(111);
	return 0;
}

// %2.4

int s241()
{

//	node splitting
//	preloading necessary to allow vectorization

	


	init( "s241 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; i++) {
			a[i] = b[i] * c[i  ] * d[i];
			b[i] = a[i] * a[i+1] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S241\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}


// %2.4

int s242(float s1, float s2)
{

//	node splitting

	


	init( "s242 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN; ++i) {
			a[i] = a[i - 1] + s1 + s2 + b[i] + c[i] + d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S242\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.4

int s243()
{

//	node splitting
//	false dependence cycle breaking

	


	init( "s243 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; i++) {
			a[i] = b[i] + c[i  ] * d[i];
			b[i] = a[i] + d[i  ] * e[i];
			a[i] = b[i] + a[i+1] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S243\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.4

int s244()
{

//	node splitting
//	false dependence cycle breaking

	


	init( "s244 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; ++i) {
			a[i] = b[i] + c[i] * d[i];
			b[i] = c[i] + b[i];
			a[i+1] = b[i] + a[i+1] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S244\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

int s1244()
{

//	node splitting
//	cycle with ture and anti dependency

	


	init( "s244 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; i++) {
			a[i] = b[i] + c[i] * c[i] + b[i]*b[i] + c[i];
			d[i] = a[i] + a[i+1];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1244\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

int s2244()
{

//	node splitting
//	cycle with ture and anti dependency

	


	init( "s244 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; i++) {
			a[i+1] = b[i] + e[i];
			a[i] = b[i] + c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2244\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.5

int s251()
{

//	scalar and array expansion
//	scalar expansion

	


	init( "s251 ");
	double loop_timer_start = omp_get_wtime( );

	float s;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			s = b[i] + c[i] * d[i];
			a[i] = s * s;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S251\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

int s1251()
{

//	scalar and array expansion
//	scalar expansion

	


	init( "s251 ");
	double loop_timer_start = omp_get_wtime( );

	float s;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			s = b[i]+c[i];
			b[i] = a[i]+d[i];
			a[i] = s*e[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1251\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

int s2251()
{

//	scalar and array expansion
//	scalar expansion

	


	init( "s251 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		float s = (float)0.0;
		for (int i = 0; i < LEN; i++) {
			a[i] = s*e[i];
			s = b[i]+c[i];
			b[i] = a[i]+d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2251\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

int s3251()
{

//	scalar and array expansion
//	scalar expansion

	

	init( "s251 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; i++){
			a[i+1] = b[i]+c[i];
			b[i]   = c[i]*e[i];
			d[i]   = a[i]*e[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S3251\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}


// %2.5

int s252()
{

//	scalar and array expansion
//	loop with ambiguous scalar temporary

	

	init( "s252 ");
	double loop_timer_start = omp_get_wtime( );

	float t, s;
	for (int nl = 0; nl < ntimes; nl++) {
		t = (float) 0.;
		for (int i = 0; i < LEN; i++) {
			s = b[i] * c[i];
			a[i] = s + t;
			t = s;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S252\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.5


int s253()
{

//	scalar and array expansion
//	scalar expansio assigned under if

	


	init( "s253 ");
	double loop_timer_start = omp_get_wtime( );

	float s;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (a[i] > b[i]) {
				s = a[i] - b[i] * d[i];
				c[i] += s;
				a[i] = s;
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S253\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(13);
	return 0;
}

// %2.5

int s254()
{

//	scalar and array expansion
//	carry around variable

	


	init( "s254 ");
	double loop_timer_start = omp_get_wtime( );

	float x;
	for (int nl = 0; nl < ntimes; nl++) {
		x = b[LEN-1];
		for (int i = 0; i < LEN; i++) {
			a[i] = (b[i] + x) * (float).5;
			x = b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S254\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.5

int s255()
{

//	scalar and array expansion
//	carry around variables, 2 levels

	


	init( "s255 ");
	double loop_timer_start = omp_get_wtime( );

	float x, y;
	for (int nl = 0; nl < ntimes; nl++) {
		x = b[LEN-1];
		y = b[LEN-2];
		for (int i = 0; i < LEN; i++) {
			a[i] = (b[i] + x + y) * (float).333;
			y = x;
			x = b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S255\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.5

int s256()
{

//	scalar and array expansion
//	array expansion

	


	init( "s256 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 1; j < LEN2; j++) {
				a[j] = (float)1.0 - a[j - 1];
				cc[j][i] = a[j] + bb[j][i]*d[j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S256\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(111);
	return 0;
}

// %2.5

int s257()
{

//	scalar and array expansion
//	array expansion

	


	init( "s257 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				a[i] = aa[j][i] - a[i-1];
				aa[j][i] = a[i] + bb[j][i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S257\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(111);
	return 0;
}

int s258()
{

//	scalar and array expansion
//	wrap-around scalar under an if

	


	init( "s258 ");
	double loop_timer_start = omp_get_wtime( );

	float s;
	for (int nl = 0; nl < (ntimes*(LEN/LEN2)); nl++) {
		s = 0.;
		for (int i = 0; i < LEN2; ++i) {
			if (a[i] > 0.) {
				s = d[i] * d[i];
			}
			b[i] = s * c[i] + d[i];
			e[i] = (s + (float)1.) * aa[0][i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S258\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(25);
	return 0;
}

// %2.7

int s261()
{

//	scalar and array expansion
//	wrap-around scalar under an if

	


	init( "s261 ");
	double loop_timer_start = omp_get_wtime( );

	float t;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN; ++i) {
			t = a[i] + b[i];
			a[i] = t + c[i-1];
			t = c[i] * d[i];
			c[i] = t;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S261\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(13);
	return 0;
}

int s271()
{

//	control flow
//	loop with singularity handling

	


	init( "s271 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (b[i] > (float)0.) {
				a[i] += b[i] * c[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S271\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.7

int s272(float t)
{

//	control flow
//	loop with independent conditional

	


	init( "s272 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (e[i] >= t) {
				a[i] += c[i] * d[i];
				b[i] += c[i] * c[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S272\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.7

int s273()
{

//	control flow
//	simple loop with dependent conditional

	


	init( "s273 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] += d[i] * e[i];
			if (a[i] < (float)0.)
				b[i] += d[i] * e[i];
			c[i] += a[i] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S273\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(123);
	return 0;
}

// %2.7

int s274()
{

//	control flow
//	complex loop with dependent conditional

	


	init( "s274 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = c[i] + e[i] * d[i];
			if (a[i] > (float)0.) {
				b[i] = a[i] + b[i];
			} else {
				a[i] = d[i] * e[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S274\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.7

int s275()
{

//	control flow
//	if around inner loop, interchanging needed

	


	init( "s275 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			if (aa[0][i] > (float)0.) {
				for (int j = 1; j < LEN2; j++) {
					aa[j][i] = aa[j-1][i] + bb[j][i] * cc[j][i];
				}
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S275\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

int s2275()
{

//	loop distribution is needed to be able to interchange

	


	init( "s275 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				aa[j][i] = aa[j][i] + bb[j][i] * cc[j][i];
			}
			a[i] = b[i] + c[i] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2275\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

// %2.7

int s276()
{

//	control flow
//	if test using loop index

	


	init( "s276 ");
	double loop_timer_start = omp_get_wtime( );

	int mid = (LEN/2);
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (i+1 < mid) {
				a[i] += b[i] * c[i];
			} else {
				a[i] += b[i] * d[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S276\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.7
int s277()
{

//	control flow
//	test for dependences arising from guard variable computation.

	


	init( "s277 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN-1; i++) {
				if (a[i] >= (float)0.) {
					goto L20;
				}
				if (b[i] >= (float)0.) {
					goto L30;
				}
				a[i] += c[i] * d[i];
L30:
				b[i+1] = c[i] + d[i] * e[i];
L20:
;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S277\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.7

int s278()
{

//	control flow
//	if/goto to block if-then-else

	


	init( "s278 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (a[i] > (float)0.) {
				goto L20;
			}
			b[i] = -b[i] + d[i] * e[i];
			goto L30;
L20:
			c[i] = -c[i] + d[i] * e[i];
L30:
			a[i] = b[i] + c[i] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S278\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(123);
	return 0;
}

// %2.7

int s279()
{

//	control flow
//	vector if/gotos

	


	init( "s279 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (a[i] > (float)0.) {
				goto L20;
			}
			b[i] = -b[i] + d[i] * d[i];
			if (b[i] <= a[i]) {
				goto L30;
			}
			c[i] += d[i] * e[i];
			goto L30;
L20:
			c[i] = -c[i] + e[i] * e[i];
L30:
			a[i] = b[i] + c[i] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S279\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(123);
	return 0;
}

int s1279()
{

//	control flow
//	vector if/gotos

	


	init( "s279 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (a[i] < (float)0.) {
				if (b[i] > a[i]) {
					c[i] += d[i] * e[i];
				}
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1279\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(123);
	return 0;
}

// %2.7

int s2710( float x)
{

//	control flow
//	scalar and vector ifs

	


	init( "s2710");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (a[i] > b[i]) {
				a[i] += b[i] * d[i];
				if (LEN > 10) {
					c[i] += d[i] * d[i];
				} else {
					c[i] = d[i] * e[i] + (float)1.;
				}
			} else {
				b[i] = a[i] + e[i] * e[i];
				if (x > (float)0.) {
					c[i] = a[i] + d[i] * d[i];
				} else {
					c[i] += e[i] * e[i];
				}
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2710\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(123);
	return 0;
}

// %2.7

int s2711()
{

//	control flow
//	semantic if removal

	

	init( "s2711");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (b[i] != (float)0.0) {
				a[i] += b[i] * c[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2711\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.7

int s2712()
{

//	control flow
//	if to elemental min

	


	init( "s2712");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (a[i] > b[i]) {
				a[i] += b[i] * c[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2712\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.8

int s281()
{

//	crossing thresholds
//	index set splitting
//	reverse data access

	


	init( "s281 ");
	double loop_timer_start = omp_get_wtime( );

	float x;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			x = a[LEN-i-1] + b[i] * c[i];
			a[i] = x-(float)1.0;
			b[i] = x;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S281\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

int s1281()
{

//	crossing thresholds
//	index set splitting
//	reverse data access

	


	init( "s281 ");
	double loop_timer_start = omp_get_wtime( );

	float x;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			x = b[i]*c[i]+a[i]*d[i]+e[i];
			a[i] = x-(float)1.0;
			b[i] = x;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1281\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %2.9

int s291()
{

//	loop peeling
//	wrap around variable, 1 level

	


	init( "s291 ");
	double loop_timer_start = omp_get_wtime( );

	int im1;
	for (int nl = 0; nl < ntimes; nl++) {
		im1 = LEN-1;
		for (int i = 0; i < LEN; i++) {
			a[i] = (b[i] + b[im1]) * (float).5;
			im1 = i;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S291\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.9

int s292()
{

//	loop peeling
//	wrap around variable, 2 levels
//	similar to S291

	


	init( "s292 ");
	double loop_timer_start = omp_get_wtime( );

	int im1, im2;
	for (int nl = 0; nl < ntimes; nl++) {
		im1 = LEN-1;
		im2 = LEN-2;
		for (int i = 0; i < LEN; i++) {
			a[i] = (b[i] + b[im1] + b[im2]) * (float).333;
			im2 = im1;
			im1 = i;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S292\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.9

int s293()
{

//	loop peeling
//	a(i)=a(0) with actual dependence cycle, loop is vectorizable

	

	init( "s293 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = a[0];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S293\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %2.10

int s2101()
{

//	diagonals
//	main diagonal calculation
//	jump in data access

	


	init( "s2101");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < (ntimes*(LEN/LEN2)); nl++) {
		for (int i = 0; i < LEN2; i++) {
			aa[i][i] += bb[i][i] * cc[i][i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2101\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

// %2.12

int s2102()
{

//	diagonals
//	identity matrix, best results vectorize both inner and outer loops

	


	init( "s2102");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				aa[j][i] = (float)0.;
			}
			aa[i][i] = (float)1.;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2102\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(11);
	return 0;
}

// %2.11

int s2111()
{

//	wavefronts, it will make jump in data access

	


	init( "s2111");
	double loop_timer_start = omp_get_wtime( );
	for (int nl = 0; nl < ntimes; nl++) {
		for (int j = 1; j < LEN2; j++) {
			for (int i = 1; i < LEN2; i++) {
				aa[j][i] = aa[j][i-1] + aa[j-1][i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S2111\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = 0.;
	for (int i = 0; i < LEN2; i++)
		for (int j = 0; j < LEN2; j++)
			temp += aa[i][j];
	if (temp == 0) temp = 3.;	
	check(-1);
	return 0;
}


// **********************************************************
//							    *
//			IDIOM RECOGNITION		    *
//							    *
// **********************************************************

// %3.1

int s311()
{

//	reductions
//	sum reduction

	


	init( "s311 ");
	double loop_timer_start = omp_get_wtime( );

	float sum;
	for (int nl = 0; nl < ntimes; nl++) {
		sum = (float)0.;
		for (int i = 0; i < LEN; i++) {
			sum += a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, sum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S311\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

float test(float* A){
  float s = (float)0.0;
//  #pragma nosimd
  for (int i = 0; i < 4; i++)
    s += A[i];
  return s;
}

int s31111()
{

//	reductions
//	sum reduction

	


	init( "s311 ");
	double loop_timer_start = omp_get_wtime( );

	float sum;
	for (int nl = 0; nl < (ntimes*(LEN/32)); nl++) {
		sum = (float)0.;
		sum += test(a);
		sum += test(&a[4]);
		sum += test(&a[8]);
		sum += test(&a[12]);
		sum += test(&a[16]);
		sum += test(&a[20]);
		sum += test(&a[24]);
		sum += test(&a[28]);
		dummy(a, b, c, d, e, aa, bb, cc, sum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S31111\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %3.1

int s312()
{

//	reductions
//	product reduction

	


	init( "s312 ");
	double loop_timer_start = omp_get_wtime( );

	float prod;
	for (int nl = 0; nl < ntimes; nl++) {
		prod = (float)1.;
		for (int i = 0; i < LEN; i++) {
			prod *= a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, prod);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S312\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = prod;
	check(-1);
	return 0;
}

// %3.1
int s313()
{

//	reductions
//	dot product

	


	init( "s313 ");
	double loop_timer_start = omp_get_wtime( );

	float dot;
	for (int nl = 0; nl < ntimes; nl++) {
		dot = (float)0.;
		for (int i = 0; i < LEN; i++) {
			dot += a[i] * b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, dot);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S313\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = dot;
	check(-1);
	return 0;
}

// %3.1

int s314()
{

//	reductions
//	if to max reduction

	


	init( "s314 ");
	double loop_timer_start = omp_get_wtime( );

	float x;
	for (int nl = 0; nl < ntimes; nl++) {
		x = a[0];
		for (int i = 0; i < LEN; i++) {
			if (a[i] > x) {
				x = a[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, x);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S314\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = x;
	check(-1);
	return 0;
}

// %3.1

int s315()
{

//	reductions
//	if to max with index reductio 1 dimension

	


	init( "s315 ");
	for (int i = 0; i < LEN; i++)
		a[i] = (i * 7) % LEN;
	double loop_timer_start = omp_get_wtime( );

	float x, chksum;
	int index;
	for (int nl = 0; nl < ntimes; nl++) {
		x = a[0];
		index = 0;
		for (int i = 0; i < LEN; ++i) {
			if (a[i] > x) {
				x = a[i];
				index = i;
			}
		}
		chksum = x + (float) index;
		dummy(a, b, c, d, e, aa, bb, cc, chksum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S315\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = index+x+1;
	check(-1);
	return 0;
}

// %3.1

int s316()
{

//	reductions
//	if to min reduction

	


	init( "s316 ");
	double loop_timer_start = omp_get_wtime( );

	float x;
	for (int nl = 0; nl < ntimes; nl++) {
		x = a[0];
		for (int i = 1; i < LEN; ++i) {
			if (a[i] < x) {
				x = a[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, x);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S316\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = x;
	check(-1);
	return 0;
}
// %3.1

int s317()
{

//	reductions
//	product reductio vectorize with
//	1. scalar expansion of factor, and product reduction
//	2. closed form solution: q = factor**n

	


	init( "s317 ");
	double loop_timer_start = omp_get_wtime( );

	float q;
	for (int nl = 0; nl < 2*ntimes; nl++) {
		q = (float)1.;
		for (int i = 0; i < LEN/2; i++) {
			q *= (float).99;
		}
		dummy(a, b, c, d, e, aa, bb, cc, q);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S317\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = q;
	check(-1);
	return 0;
}

// %3.1

int s318( int inc)
{

//	reductions
//	isamax, max absolute value, increments not equal to 1


	


	init( "s318 ");
	double loop_timer_start = omp_get_wtime( );

	int k, index;
	float max, chksum;
	for (int nl = 0; nl < ntimes; nl++) {
		k = 0;
		index = 0;
		max = abs(a[0]);
		k += inc;
		for (int i = 1; i < LEN; i++) {
			if (abs(a[k]) <= max) {
				goto L5;
			}
			index = i;
			max = abs(a[k]);
L5:
			k += inc;
		}
		chksum = max + (float) index;
		dummy(a, b, c, d, e, aa, bb, cc, chksum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S318\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = max + index+1;
	check(-1);
	return 0;
}

// %3.1

int s319()
{

//	reductions
//	coupled reductions

	


	init( "s319 ");
	double loop_timer_start = omp_get_wtime( );

	float sum;
	for (int nl = 0; nl < ntimes; nl++) {
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			a[i] = c[i] + d[i];
			sum += a[i];
			b[i] = c[i] + e[i];
			sum += b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, sum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S319\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = sum;
	check(-1);
	return 0;
}

// %3.1

int s3110()
{

//	reductions
//	if to max with index reductio 2 dimensions
//	similar to S315

	


	init( "s3110");
	double loop_timer_start = omp_get_wtime( );

	int xindex, yindex;
	float max, chksum;
	for (int nl = 0; nl < ntimes; nl++) {
		max = aa[(0)][0];
		xindex = 0;
		yindex = 0;
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				if (aa[i][j] > max) {
					max = aa[i][j];
					xindex = i;
					yindex = j;
				}
			}
		}
		chksum = max + (float) xindex + (float) yindex;
		dummy(a, b, c, d, e, aa, bb, cc, chksum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S3110\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = max + xindex+1 + yindex+1;
	check(-1);
	return 0;
}

int s13110()
{

//	reductions
//	if to max with index reductio 2 dimensions

	


	init( "s3110");
	double loop_timer_start = omp_get_wtime( );

	int xindex, yindex;
	float max, chksum;
	for (int nl = 0; nl < ntimes; nl++) {
		max = aa[(0)][0];
		xindex = 0;
		yindex = 0;
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				if (aa[i][j] > max) {
					max = aa[i][j];
				}
			}
		}
		chksum = max + (float) xindex + (float) yindex;
		dummy(a, b, c, d, e, aa, bb, cc, chksum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S13110\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = max + xindex+1 + yindex+1;
	check(-1);
	return 0;
}

// %3.1

int s3111()
{

//	reductions
//	conditional sum reduction

	


	init( "s3111");
	double loop_timer_start = omp_get_wtime( );

	float sum;
	for (int nl = 0; nl < ntimes; nl++) {
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			if (a[i] > (float)0.) {
				sum += a[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, sum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S3111\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = sum;
	check(-1);
	return 0;
}

// %3.1

int s3112()
{

//	reductions
//	sum reduction saving running sums

	


	init( "s3112");
	double loop_timer_start = omp_get_wtime( );

	float sum;
	for (int nl = 0; nl < ntimes; nl++) {
		sum = (float)0.0;
		for (int i = 0; i < LEN; i++) {
			sum += a[i];
			b[i] = sum;
		}
		dummy(a, b, c, d, e, aa, bb, cc, sum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S3112\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = sum;
	check(-12);
	return 0;
}

// %3.1

int s3113()
{

//	reductions
//	maximum of absolute value

	


	init( "s3113");
	double loop_timer_start = omp_get_wtime( );

	float max;
	for (int nl = 0; nl < ntimes; nl++) {
		max = abs(a[0]);
		for (int i = 0; i < LEN; i++) {
			if ((abs(a[i])) > max) {
				max = abs(a[i]);
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, max);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S3113\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = max;
	check(-1);
	return 0;
}

// %3.2

int s321()
{

//	recurrences
//	first order linear recurrence

	


	init( "s321 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN; i++) {
			a[i] += a[i-1] * b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S321\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %3.2

int s322()
{

//	recurrences
//	second order linear recurrence

	


	init( "s322 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 2; i < LEN; i++) {
			a[i] = a[i] + a[i - 1] * b[i] + a[i - 2] * c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S322\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %3.2

int s323()
{

//	recurrences
//	coupled recurrence

	


	init( "s323 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 1; i < LEN; i++) {
			a[i] = b[i-1] + c[i] * d[i];
			b[i] = a[i] + c[i] * e[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S323\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(12);
	return 0;
}

// %3.3

int s331()
{

//	search loops
//	if to last-1

	


	init( "s331 ");
	double loop_timer_start = omp_get_wtime( );

	int j;
	float chksum;
	for (int nl = 0; nl < ntimes; nl++) {
		j = -1;
		for (int i = 0; i < LEN; i++) {
			if (a[i] < (float)0.) {
				j = i;
			}
		}
		chksum = (float) j;
		dummy(a, b, c, d, e, aa, bb, cc, chksum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S331\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = j+1;
	check(-1);
	return 0;
}

int max(int a1, int b1)
{
	if (b1 > a1)
		return b1;
	else
		return a1;
}

// %3.3
int s332( float t)
{

//	search loops
//	first value greater than threshoLEN

	


	init( "s332 ");
	double loop_timer_start = omp_get_wtime( );

	int index;
	float value;
	float chksum;
	for (int nl = 0; nl < ntimes; nl++) {
		index = -2;
		value = -1.;
		for (int i = 0; i < LEN; i++) {
			if (a[i] > t) {
				index = i;
				value = a[i];
				goto L20;
			}
		}
L20:
		chksum = value + (float) index;
		dummy(a, b, c, d, e, aa, bb, cc, chksum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S332\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = value;
	check(-1);
	return 0;
}


// %3.4

int s341()
{

//	packing
//	pack positive values
//	not vectorizable, value of j in unknown at each iteration

	

	init( "s341 ");
	double loop_timer_start = omp_get_wtime( );

	int j;
	for (int nl = 0; nl < ntimes; nl++) {
		j = -1;
		for (int i = 0; i < LEN; i++) {
			if (b[i] > (float)0.) {
				j++;
				a[j] = b[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S341\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %3.4

int s342()
{

//	packing
//	unpacking
//	not vectorizable, value of j in unknown at each iteration

	

	init( "s342 ");
	double loop_timer_start = omp_get_wtime( );

	int j = 0;
	for (int nl = 0; nl < ntimes; nl++) {
		j = -1;
		for (int i = 0; i < LEN; i++) {
			if (a[i] > (float)0.) {
				j++;
				a[i] = b[j];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S342\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %3.4

int s343()
{

//	packing
//	pack 2-d array into one dimension
//	not vectorizable, value of k in unknown at each iteration

	

	init( "s343 ");
	double loop_timer_start = omp_get_wtime( );

	int k;
	for (int nl = 0; nl < ntimes; nl++) {
		k = -1;
		for (int i = 0; i < LEN2; i++) {
			for (int j = 0; j < LEN2; j++) {
				if (bb[j][i] > (float)0.) {
					k++;
					array[k] = aa[j][i];
				}
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S343\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(0);
	return 0;
}

// %3.5

int s351()
{

//	loop rerolling
//	unrolled saxpy

	

	init( "s351 ");
	double loop_timer_start = omp_get_wtime( );

	float alpha = c[0];
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i += 5) {
			a[i] += alpha * b[i];
			a[i + 1] += alpha * b[i + 1];
			a[i + 2] += alpha * b[i + 2];
			a[i + 3] += alpha * b[i + 3];
			a[i + 4] += alpha * b[i + 4];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S351\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

int s1351()
{

//	induction pointer recognition

	

	init( "s351 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		float* __restrict__ A = a;
		float* __restrict__ B = b;
		float* __restrict__ C = c;
		for (int i = 0; i < LEN; i++) {
			*A = *B+*C;
			A++;
			B++;
			C++;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1351\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %3.5

int s352()
{

//	loop rerolling
//	unrolled dot product

	

	init( "s352 ");
	double loop_timer_start = omp_get_wtime( );

	float dot;
	for (int nl = 0; nl < ntimes; nl++) {
		dot = (float)0.;
		for (int i = 0; i < LEN; i += 5) {
			dot = dot + a[i] * b[i] + a[i + 1] * b[i + 1] + a[i + 2]
				* b[i + 2] + a[i + 3] * b[i + 3] + a[i + 4] * b[i + 4];
		}
		dummy(a, b, c, d, e, aa, bb, cc, dot);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S352\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = dot;
	check(-1);
	return 0;
}

// %3.5

int s353(int* __restrict__ ip)
{

//	loop rerolling
//	unrolled sparse saxpy
//	gather is required

	

	init( "s353 ");
	double loop_timer_start = omp_get_wtime( );

	float alpha = c[0];
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i += 5) {
			a[i] += alpha * b[ip[i]];
			a[i + 1] += alpha * b[ip[i + 1]];
			a[i + 2] += alpha * b[ip[i + 2]];
			a[i + 3] += alpha * b[ip[i + 3]];
			a[i + 4] += alpha * b[ip[i + 4]];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S353\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// **********************************************************
//							    *
//			 LANGUAGE COMPLETENESS		    *
//							    *
// **********************************************************

// %4.1
// %4.2

int s421()
{

//	storage classes and equivalencing
//	equivalence- no overlap

	set1d(xx, 1., 1);
	
	init( "s421 ");
	double loop_timer_start = omp_get_wtime( );


	for (int nl = 0; nl < ntimes; nl++) {
		yy = xx;
		for (int i = 0; i < LEN - 1; i++) {
			xx[i] = yy[i+1] + a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 1.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S421\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = 0;
	for (int i = 0; i < LEN; i++){
		temp += xx[i];
	}
	check(-1);
	return 0;
}

int s1421()
{

//	storage classes and equivalencing
//	equivalence- no overlap

	set1d(xx, 1., 1);
	
	init( "s421 ");
	double loop_timer_start = omp_get_wtime( );

	xx = &b[LEN/2];
	for (int nl = 0; nl < 2*ntimes; nl++) {
		for (int i = 0; i < LEN/2; i++) {
			b[i] = xx[i] + a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 1.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S1421\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = 0;
	for (int i = 0; i < LEN/2; i++){
		temp += xx[i];
	}
	check(-1);
	return 0;
}

// %4.2

int s422()
{

//	storage classes and equivalencing
//	common and equivalence statement
//	anti-dependence, threshold of 4

	xx = array + 4;
	set1d(xx, 0., 1);
	
	init( "s422 ");
	double loop_timer_start = omp_get_wtime( );



	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			xx[i] = array[i + 8] + a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S422\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = 0;
	for (int i = 0; i < LEN; i++){
		temp += xx[i];
	}
	check(-1);
	return 0;
}

// %4.2

int s423()
{

//	storage classes and equivalencing
//	common and equivalenced variables - with anti-dependence

	int vl = 64;
	xx = array+vl;
	set1d(xx, 1., 1);
	
	init( "s423 ");
	double loop_timer_start = omp_get_wtime( );
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN - 1; i++) {
			array[i+1] = xx[i] + a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 1.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S423\t %.9f \t\t", loop_timer_end - loop_timer_start);;

	temp = 0.;
	for (int i = 0; i < LEN; i++){
		temp += array[i];
	}
	check(-1);
	return 0;
}

// %4.2

int s424()
{

//	storage classes and equivalencing
//	common and equivalenced variables - overlap
//	vectorizeable in strips of 64 or less

	int vl = 63;
	xx = array + vl;
	set1d(xx, 0., 1);
	
	init( "s424 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN - 1; i++) {
			xx[i+1] = array[i] + a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 1.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S424\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = 0.;
	for (int i = 0; i < LEN; i++){
		temp += xx[i];
	}
	check(-1);
	return 0;
}

// %4.3

int s431()
{

//	parameters
//	parameter statement

	int k1=1;
	int k2=2;
	int k=2*k1-k2;
	


	init( "s431 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = a[i+k] + b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S431\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.4

int s441()
{

//	non-logical if's
//	arithmetic if

	


	init( "s441 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (d[i] < (float)0.) {
				a[i] += b[i] * c[i];
			} else if (d[i] == (float)0.) {
				a[i] += b[i] * b[i];
			} else {
				a[i] += c[i] * c[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S441\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.4

int s442()
{

//	non-logical if's
//	computed goto

	


	init( "s442 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			switch (indx[i]) {
				case 1:  goto L15;
				case 2:  goto L20;
				case 3:  goto L30;
				case 4:  goto L40;
			}
L15:
			a[i] += b[i] * b[i];
			goto L50;
L20:
			a[i] += c[i] * c[i];
			goto L50;
L30:
			a[i] += d[i] * d[i];
			goto L50;
L40:
			a[i] += e[i] * e[i];
L50:
			;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S442\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.4

int s443()
{

//	non-logical if's
//	arithmetic if

	


	init( "s443 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (d[i] <= (float)0.) {
				goto L20;
			} else {
				goto L30;
			}
L20:
			a[i] += b[i] * c[i];
			goto L50;
L30:
			a[i] += b[i] * b[i];
L50:
			;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S443\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.5

int s451()
{

//	intrinsic functions
//	intrinsics

	


	init( "s451 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = sinf(b[i]) + cosf(c[i]);
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S451\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.5

int s452()
{

//	intrinsic functions
//	seq function

	


	init( "s452 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = b[i] + c[i] * (float) (i+1);
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S452\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.5

int s453()
{

//	induction varibale recognition

	float s;
	


	init( "s453 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		s = 0.;
		for (int i = 0; i < LEN; i++) {
			s += (float)2.;
			a[i] = s * b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S453\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.7

int s471(){

//	call statements

	int m = LEN;
	set1d(x, 0., 1);
	


	init( "s471 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < m; i++) {
			x[i] = b[i] + d[i] * d[i];
			s471s();
			b[i] = c[i] + d[i] * e[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S471\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = 0.;
	for (int i = 0; i < LEN; i++){
		temp += x[i];
	}
	check(-12);
	return 0;
}

// %4.8

int s481()
{

//	non-local goto's
//	stop statement

	


	init( "s481 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (d[i] < (float)0.) {
				exit (0);
			}
			a[i] += b[i] * c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S481\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.8

// %4.8
int s482()
{

//	non-local goto's
//	other loop exit with code before exit

	


	init( "s482 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] += b[i] * c[i];
			if (c[i] > b[i]) break;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S482\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}


int min(int a, int b){
  return (a < b) ? a : b;
}

// %4.9

int s491(int* __restrict__ ip)
{

//	vector semantics
//	indirect addressing on lhs, store in sequence
//	scatter is required

	


	init( "s491 ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[ip[i]] = b[i] + c[i] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S491\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.11

int s4112(int* __restrict__ ip, float s)
{

//	indirect addressing
//	sparse saxpy
//	gather is required

	


	init( "s4112");
	double loop_timer_start = omp_get_wtime( );
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] += b[ip[i]] * s;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S4112\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.11

int s4113(int* __restrict__ ip)
{

//	indirect addressing
//	indirect addressing on rhs and lhs
//	gather and scatter is required

	


	init( "s4113");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[ip[i]] = b[ip[i]] + c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S4113\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.11

int s4114(int* ip, int n1)
{

//	indirect addressing
//	mix indirect addressing with variable lower and upper bounds
//	gather is required

	


	init( "s4114");
	double loop_timer_start = omp_get_wtime( );

	int k;
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = n1-1; i < LEN; i++) {
			k = ip[i];
			a[i] = b[i] + c[LEN-k+1-2] * d[i];
			k += 5;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S4114\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.11

int s4115(int* __restrict__ ip)
{

//	indirect addressing
//	sparse dot product
//	gather is required

	


	init( "s4115");
	double loop_timer_start = omp_get_wtime( );

	float sum;
	for (int nl = 0; nl < ntimes; nl++) {
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			sum += a[i] * b[ip[i]];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S4115\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = sum;
	check(-1);
	return 0;
}

// %4.11

int s4116(int* __restrict__ ip, int j, int inc)
{

//	indirect addressing
//	more complicated sparse sdot
//	gather is required

	


	init( "s4116");
	double loop_timer_start = omp_get_wtime( );

	float sum;
	int off;
	for (int nl = 0; nl < (ntimes*(LEN/LEN2)); nl++) {
		sum = 0.;
		for (int i = 0; i < LEN2-1; i++) {
			off = inc + i;
			sum += a[off] * aa[j-1][ip[i]];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S4116\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = sum;
	check(-1);
	return 0;
}

// %4.11

int s4117()
{

//	indirect addressing
//	seq function

	


	init( "s4117");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = b[i] + c[i/2] * d[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S4117\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %4.12

int s4121()
{

//	statement functions
//	elementwise multiplication

	


	init( "s4121");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] += f(b[i],c[i]);
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("S4121\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int va()
{

//	control loops
//	vector assignment

	

	init( "va	");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("va\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vag( int* __restrict__ ip)
{

//	control loops
//	vector assignment, gather
//	gather is required

	


	init( "vag  ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = b[ip[i]];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vag\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vas( int* __restrict__ ip)
{

//	control loops
//	vector assignment, scatter
//	scatter is required

	


	init( "vas  ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[ip[i]] = b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vas\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vif()
{

//	control loops
//	vector if

	


	init( "vif  ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			if (b[i] > (float)0.) {
				a[i] = b[i];
			}
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vif\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vpv()
{

//	control loops
//	vector plus vector

	


	init( "vpv  ");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] += b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vpv\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vtv()
{

//	control loops
//	vector times vector

	


	init( "vtv  ");
	double loop_timer_start = omp_get_wtime( );

	// Function Body
	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] *= b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vtv\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vpvtv()
{

//	control loops
//	vector plus vector times vector

	


	init( "vpvtv");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] += b[i] * c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vpvtv\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vpvts( float s)
{

//	control loops
//	vector plus vector times scalar

	


	init( "vpvts");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] += b[i] * s;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vpvts\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vpvpv()
{

//	control loops
//	vector plus vector plus vector

	


	init( "vpvpv");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] += b[i] + c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vpvpv\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vtvtv()
{

//	control loops
//	vector times vector times vector

	


	init( "vtvtv");
	double loop_timer_start = omp_get_wtime( );

	for (int nl = 0; nl < ntimes; nl++) {
		for (int i = 0; i < LEN; i++) {
			a[i] = a[i] * b[i] * c[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vtvtv\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vsumr()
{

//	control loops
//	vector sum reduction

	


	init( "vsumr");
	double loop_timer_start = omp_get_wtime( );

	float sum;
	for (int nl = 0; nl < ntimes; nl++) {
		sum = 0.;
		for (int i = 0; i < LEN; i++) {
			sum += a[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, sum);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vsumr\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	check(1);
	return 0;
}

// %5.1

int vdotr()
{

//	control loops
//	vector dot product reduction

	


	init( "vdotr");
	double loop_timer_start = omp_get_wtime( );

	float dot;
	for (int nl = 0; nl < ntimes; nl++) {
		dot = 0.;
		for (int i = 0; i < LEN; i++) {
			dot += a[i] * b[i];
		}
		dummy(a, b, c, d, e, aa, bb, cc, dot);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vdotr\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = dot;
	check(-1);
	return 0;
}

// %5.1

int vbor()
{

//	control loops
//	basic operations rates, isolate arithmetic from memory traffic
//	all combinations of three, 59 flops for 6 loads and 1 store.

	


	init( "vbor ");
	double loop_timer_start = omp_get_wtime( );

	float a1, b1, c1, d1, e1, f1;
	for (int nl = 0; nl < (ntimes*(LEN/LEN2)); nl++) {
		for (int i = 0; i < LEN2; i++) {
			a1 = a[i];
			b1 = b[i];
			c1 = c[i];
			d1 = d[i];
			e1 = e[i];
			f1 = aa[0][i];
			a1 = a1 * b1 * c1 + a1 * b1 * d1 + a1 * b1 * e1 + a1 * b1 * f1 +
				a1 * c1 * d1 + a1 * c1 * e1 + a1 * c1 * f1 + a1 * d1 * e1
				+ a1 * d1 * f1 + a1 * e1 * f1;
			b1 = b1 * c1 * d1 + b1 * c1 * e1 + b1 * c1 * f1 + b1 * d1 * e1 +
				b1 * d1 * f1 + b1 * e1 * f1;
			c1 = c1 * d1 * e1 + c1 * d1 * f1 + c1 * e1 * f1;
			d1 = d1 * e1 * f1;
			x[i] = a1 * b1 * c1 * d1;
		}
		dummy(a, b, c, d, e, aa, bb, cc, 0.);
	}
	double loop_timer_end = omp_get_wtime( );
	
	printf("vbor\t %.9f \t\t", loop_timer_end - loop_timer_start);;
	temp = 0.;
	for (int i = 0; i < LEN; i++){
		temp += x[i];
	}
	check(-1);
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

int main(){
	int n1 = 1;
	int n3 = 1;
	int* ip = (int *) memalign(16, LEN*sizeof(float));
	float s1,s2;
	set(ip, &s1, &s2);
	printf("Loop \t Time(Sec) \t Checksum \n");

	s000();
	s111();
	s1111();
	s112();
	s1112();
	s113();
	s1113();
	s114();
	s115();
	s1115();
	s116();
	s118();
	s119();
	s1119();
	s121();
	s122(n1,n3);
	s123();
  	s124();
	s125();
	s126();
	s127();
	s128();
	s131();
	s132();
	s141();
	s151();
	s152();
	s161();
	s1161();
	s162(n1);
	s171(n1);
	s172(n1,n3);
	s173();
	s174(LEN/2);
	s175(n1);
	s176();
	s211();
	s212();
	s1213();
	s221();
	s1221();
	s222();
	s231();
	s232();
	s1232();
	s233();
	s2233();
	s235();
	s241();
	s242(s1, s2);
	s243();
	s244();
	s1244();
	s2244();
	s251();
	s1251();
	s2251();
	s3251();
	s252();
	s253();
	s254();
	s255();
	s256();
	s257();
	s258();
	s261();
	s271();
	s272(s1);
	s273();
	s274();
	s275();
	s2275();
	s276();
	s277();
	s278();
	s279();
	s1279();
	s2710(s1);
	s2711();
	s2712();
	s281();
	s1281();
	s291();
	s292();
	s293();
	s2101();
	s2102();
	s2111();
	s311();
	s31111();
	s312();
	s313();
	s314();
	s315();
	s316();
	s317();
	s318(n1);
	s319();
	s3110();
	s13110();
	s3111();
	s3112();
	s3113();
	s321();
	s322();
	s323();
	s331();
	s332(s1);
	s341();
	s342();
	s343();
	s351();
	s1351();
	s352();
	s353(ip);
	s421();
	s1421();
	s422();
	s423();
	s424();
	s431();
	s441();
	s442();
	s443();
	s451();
	s452();
	s453();
	s471();
	s481();
	s482();
	s491(ip);
	s4112(ip, s1);
	s4113(ip);
	s4114(ip,n1);
	s4115(ip);
	s4116(ip, LEN2/2, n1);
	s4117();
	s4121();
	va();
	vag(ip);
	vas(ip);
	vif();
	vpv();
	vtv();
	vpvtv();
	vpvts(s1);
	vpvpv();
	vtvtv();
	vsumr();
	vdotr();
	vbor();
	return 0;
}

