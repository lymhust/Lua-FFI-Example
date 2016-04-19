require 'torch'
ffi = require 'ffi'

ffi.cdef
[[
	typedef struct mydata{
		double x;
		double y;
	}mydata;
	mydata add_c(mydata X, mydata Y);
	THFloatTensor* resize_c(THFloatTensor* tensor, int idxsize, int idxstride);
]]

func = ffi.load('./lib/libmyfuncs_c.so')
aa = ffi.new('struct mydata')
bb = ffi.new('struct mydata')

dd = torch.FloatTensor(5)
func.resize_c(torch.cdata(dd), 10, 10)

print(dd)

aa.x = 10
aa.y = 10
bb.x = 20
bb.y = 20
print("Hello C")
cc = func.add_c(aa, bb)
print(cc.x)
