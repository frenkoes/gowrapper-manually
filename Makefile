CFLAGS=-Wall -Werror -g -ansi -pedantic -std=c99
CCFLAGS=-Wall -Werror -g
LDFLAGS=-g -Wall -lstdc++

PROG=main
OBJS=number.o numberWrapper.o main.o


all: $(PROG)
default: all

%.o: %.cpp
	$(CC) $(CCFLAGS) -c $<

%.o: %.c
	$(CC) $(CFLAGS) -c $<

$(PROG): $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) -o $@

clean:
	rm -f $(OBJS)
	rm -f $(PROG)

.PHONY: all default clean 