#

.PHONY:	love
love:	all

.PHONY:	all
all:	couchdb

couchdb:
	git submodules update --init

.PHONY:	install
install:

debian:
	apt-get install git build-essential

.PHONY:	test
test:

