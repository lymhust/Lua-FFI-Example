#include "myfuncs.h"

mydata add_c(mydata X, mydata Y) {
	mydata tmp;
	tmp.x = X.x + Y.x;
	tmp.y = X.y + Y.y; 
	return tmp;
}

THFloatTensor* resize_c(THFloatTensor* tensor, int idxsize, int idxstride) {
	float *vals = THFloatTensor_data(tensor);
	vals[0] = 888;
	vals[2] = 999;	
	return tensor;
}
