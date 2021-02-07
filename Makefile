include config.mk

OUT := hello
MAN := ${OUT}.1
DOC := doc
SRC := src
BIN := bin

# For non-GNU make
SHELL := /bin/sh

all: build

build:
	@echo "Building project..."
	mkdir -p ${BIN}
	${CC} ${CCFLAGS} -o ${BIN}/${OUT} ${SRC}/main.c
	@echo "Done"

clean:
	@echo "Cleaning source directory..."
	rm -rf ${BIN}
	@echo "Done"

install:
	@echo "Installing binary..."
	mkdir -p ${BINPREFIX}
	cp -p ${BIN}/${OUT} ${BINPREFIX}
	@echo "Installing man page..."
	mkdir -p ${MANPREFIX}
	cp -p ${DOC}/${MAN} ${MANPREFIX}
	@echo "Done"

uninstall:
	@echo "Uninstalling binary..."
	rm -f ${BINPREFIX}/${OUT}
	@echo "Uninstalling man page..."
	rm -f ${MANPREFIX}/${MAN}
	@echo "Done"

.PHONY: all build clean install uninstall
