CC      := gcc
LD      := ld

LDFLAGS := -shared -fpic
CFLAGS  := -g -Wall -fpic
DIR_OBJ := ./obj
DIR_LIB := ./lib

SOURCE  := $(wildcard *.c)
OBJS    := $(patsubst %.c, ${DIR_OBJ}/%.o, $(notdir ${SOURCE}))
TARGET_LIB := libmyfuncs_c.so
 
all:$(OBJS)
	echo $(OBJS)
	$(LD) $(LDFLAGS) -o $(DIR_LIB)/$(TARGET_LIB) $(OBJS) 
 
${DIR_OBJ}/%.o: %.c
	@echo Compiling $< ...
	$(CC) -c $(CFLAGS)  $< -o ${DIR_OBJ}/$*.o
 
.PHONY: clean
 
clean:
	rm -rf $(DIR_LIB)/*.so $(DIR_OBJ)/*.o
