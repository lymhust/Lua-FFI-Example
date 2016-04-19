#include <stdio.h>
#include "TH/TH.h"

typedef struct mydata{
	double x;
	double y;
}mydata;

mydata add_c(mydata X, mydata Y);

THFloatTensor* resize_c(THFloatTensor* tensor, int idxsize, int idxstride);
 
