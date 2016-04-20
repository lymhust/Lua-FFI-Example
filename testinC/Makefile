TARGET := test

$(TARGET):
	gcc $(TARGET).c -L . -lmyfuncs_c -lTH -o $(TARGET)

 
.PHONY: clean
 
clean:
	rm -rf $(TARGET) $(TARGET).o
