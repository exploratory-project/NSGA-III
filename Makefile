# Makefile for compiling NSGA-III, A-NSGA-III and A^2-NSGA-III source code
CC=gcc
LD=gcc
RM=rm -f
CFLAGS=-Wall -ansi -pedantic -g
OBJS:=$(patsubst %.c,%.o,$(wildcard *.c))
MAIN=nsga2r
all:$(MAIN)
$(MAIN):$(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(MAIN) -lm
%.o: %.c global.h rand.h
	$(CC) $(CFLAGS) -c $<
clean:
	$(RM) $(OBJS)

