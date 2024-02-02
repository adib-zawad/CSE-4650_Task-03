# Makefile

CC = gcc
CFLAGS = -Wall -Werror -Wextra -g -fsanitize=address -fsanitize=undefined
OPTFLAGS = -O3

all: reverse_test

reverse_test: test_reverse.c reverse.c
	$(CC) $(CFLAGS) $(OPTFLAGS) $^ -o $@

clean:
	rm -f reverse_test
