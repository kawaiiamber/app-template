include config.mk

# Mainly for non-GNU Make
SHELL := /bin/sh

PROG := hello

CCFLAGS := -g -Wall -Wextra
OUT     := -o bin/${PROG} src/main.c

all: build

build:
	mkdir -p bin
	${CC} ${CCFLAGS} ${OUT}

clean:
	rm -rf bin

install:
	mkdir -p ${BINPREFIX}
	cp -p bin/${PROG} ${BINPREFIX}
	mkdir -p ${MANPREFIX}
	cp -p doc/${PROG}.1 ${MANPREFIX}

uninstall:
	rm -f ${BINPREFIX}/${PROG}
	rm -f ${MANPREFIX}/${PROG}.1

.PHONY: all build clean install uninstall
