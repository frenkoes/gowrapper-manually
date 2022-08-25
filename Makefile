CFLAGS=-Wall -Werror -g -ansi -pedantic -std=c99
CPPFLAGS=-Wall -Werror -g
LDFLAGS=-g -Wall -lstdc++

PROG=main
OBJS=number.o numberWrapper.o main.o


all: $(PROG)
default: all

%.o: %.cpp 						# Build C++ files
	$(CC) $(CCFLAGS) -c $<

%.o: %.c						# Build C files
	$(CC) $(CPPFLAGS) -c $<

$(PROG): $(OBJS)				# Link and create on BIn
	$(CC) $(OBJS) $(LDFLAGS) -o $
# Clean unnecessary object files
	rm -f $(OBJS) 

clean:
	rm -f $(OBJS)
	rm -f $(PROG)

.PHONY: all default clean 