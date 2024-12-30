.POSIX:
.SUFFIXES:
.PHONY: all clean install check

PROJECT   =lepton-symbols-office
VERSION   =1.0.0
PREFIX    =/usr/local
BUILDDIR ?=.build
UNAME_S  ?=$(shell uname -s)
EXE      ?=$(shell uname -s | awk '/Windows/ || /MSYS/ || /CYG/ { print ".exe" }')
PWD       =$(shell pwd)

all:
clean:
install:
	mkdir -p $(DESTDIR)$(PREFIX)/share/lepton-eda
	mkdir -p $(DESTDIR)$(PREFIX)/share/lepton-eda/scheme/autoload
	cp -r sym-office $(DESTDIR)$(PREFIX)/share/lepton-eda
	cp scm/config-office-symbol-library.scm $(DESTDIR)$(PREFIX)/share/lepton-eda/scheme/autoload
link:
	sed 's|(build-path geda-data-path "sym-office")|"$(PWD)/sym-office"|' \
	    scm/config-office-symbol-library.scm \
	    > /usr/share/lepton-eda/scheme/autoload/config-office-symbol-library.scm
check:
