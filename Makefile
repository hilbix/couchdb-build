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
	apt-get -y --no-install-recommends install git build-essential pkg-config erlang libicu-dev libmozjs185-dev libcurl4-openssl-dev

.PHONY:	test
test:

