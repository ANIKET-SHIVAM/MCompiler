#include "tsc.h"

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

