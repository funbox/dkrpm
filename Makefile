########################################################################################

.PHONY = all install uninstall test

DESTDIR ?= /usr/local/bin

########################################################################################

all: test

install:
	cp -f dkrpm $(DESTDIR)/dkrpm
	chmod +x $(DESTDIR)/dkrpm

uninstall:
	rm -f $(DESTDIR)/dkrpm

test:
	bash .linter/linter.sh dkrpm

########################################################################################
