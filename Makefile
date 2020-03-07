#

.PHONY:	love
love:	all

.PHONY:	all
all:	couchdb
	cd couchdb; ./configure; make

.PHONY:	couchdb
couchdb:	couchdb/bin/rebar
	$(MAKE) -C '$@' release

# Huh?
couchdb/bin/rebar:	couchdb/.git
	cd couchdb && ./configure

couchdb/.git:
	git submodule update --init --recursive

.PHONY:	install
install:

debian:
	apt-get -y --no-install-recommends install git build-essential pkg-config
	apt-get -y --no-install-recommends install help2man erlang
	apt-get -y --no-install-recommends install libicu-dev libmozjs185-dev libcurl4-openssl-dev

.PHONY:	test
test:

