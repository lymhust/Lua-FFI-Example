#include <stdio.h>
#include "myfuncs.h"

void main() {
	mydata X, Y, Z;
	X.x = 10;
	X.y = 10;
	Y.x = 10;
	Y.y = 10;
	Z = add_c(X, Y);
	printf("Results: %f\n", Z.x);
}
