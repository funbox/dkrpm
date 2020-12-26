########################################################################################

.PHONY = all install uninstall test

DESTDIR ?= /usr/local/bin

########################################################################################

VERSION := 1.6.1
BUMPVERSION_PART ?= patch

########################################################################################

all: test

bump:
	bump2version $(BUMPVERSION_PART)

install:
	cp -f dkrpm $(DESTDIR)/dkrpm
	chmod +x $(DESTDIR)/dkrpm

uninstall:
	rm -f $(DESTDIR)/dkrpm

test:
	bash .linter/linter.sh dkrpm

########################################################################################
