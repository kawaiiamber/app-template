About
=====

This program prints a string to standard output on a terminal.

Dependencies
============

In order to build hello, the following dependencies are needed:

-   Standard C "stdio.h" library header
-   A C compiler (e.g. gcc, tcc, clang, etc)
-   Make
-   (optional) man to see documentation

Configuration
=============

To edit the string to say a custom message, edit src/config.h.

Building
========

Configure config.mk to set your C compiler. Then to build this program
locally, simply run

    make

The program will be contained within a new folder "bin." To run it,
simply run

    ./bin/hello

To clean the source directory, simply run

    make clean

Installing
==========

For installation instructions, see INSTALL.md

Running
=======

Once installed, hello can be ran simply by running

    hello

Documentation
=============

Once installed, the man page can be accessed simply by running

    man hello
