CC=gcc
CFLAGS=-Wall -Wextra -std=c11 -pedantic -lm -ggdb
LIBS=`pkg-config --cflags --libs sdl2`
INPUT=

.PHONY: test

test: main $(INPUT)
	./main $(INPUT)

main: main.c
	$(CC) -o main main.c $(CFLAGS) $(LIBS)
