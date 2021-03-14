.POSIX:

include config.mk

# Mainly for non-GNU make
SHELL = /bin/sh

BINDIR = ${DESTDIR}${BINPREFIX}
MANDIR = ${DESTDIR}${MANPREFIX}

PROG = hello

CCFLAGS = -g -Wall -Wextra -Wpedantic
OUT     = -o bin/${PROG} src/main.c

all: build

build:
	mkdir -p bin
	${CC} ${CCFLAGS} ${OUT}

clean:
	rm -rf bin

install:
	mkdir -p ${BINDIR}
	cp -p bin/${PROG} ${BINDIR}
	chmod 755 ${BINDIR}/${PROG}
	mkdir -p ${MANDIR}
	cp -p doc/${PROG}.1 ${MANDIR}
	chmod 644 ${MANDIR}/${PROG}.1

uninstall:
	rm -f ${BINDIR}/${PROG}
	rm -f ${MANDIR}/${PROG}.1

.PHONY: all build clean install uninstall
