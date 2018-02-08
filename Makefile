########################################################################################

.PHONY = all build clean deploy install uninstall test

########################################################################################

all: build test

build: build-rpmbuilder6 build-rpmbuilder7

deploy: deploy-rpmbuilder6 build-rpmbuilder7

clean: clean-rpmbuilder6 clean-rpmbuilder7

build-rpmbuilder%:
	docker build -f rpmbuilder$(*F).docker -t rpmbuilder:$(*F) .
	docker tag rpmbuilder:$(*F) gongled/rpmbuilder:$(*F) 

deploy-rpmbuilder%:
	docker push gongled/rpmbuilder:$(*F)

clean-rpmbuilder%:
	docker rmi -f gongled/rpmbuilder:$(*F)
	docker rmi -f rpmbuilder:$(*F)

install:
	cp -f dkrpm /usr/bin/dkrpm

uninstall:
	rm -f /usr/bin/dkrpm

test:
	bash .linter/linter.sh dkrpm

########################################################################################
