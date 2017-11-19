########################################################################################

TARGETS = rpmbuilder6 rpmbuilder7

########################################################################################

.PHONY = all build install uninstall test

########################################################################################

all: $(TARGETS) build test

build:
	@echo 'Nothing to build'

rpmbuilder%:
	docker build -f $@.docker -t rpmbuilder:$(*F) .

install:
	cp -f dkrpm /usr/bin/dkrpm

uninstall:
	rm -f /usr/bin/dkrpm

test:
	bash .linter/linter.sh dkrpm

########################################################################################
