#

.PHONY:	love
love:	all

.PHONY:	all
all:	couchdb
	cd couchdb; ./configure; make

.PHONY:	couchdb
couchdb:	couchdb/bin/rebar
	$(MAKE) -C '$@'

# Huh?
couchdb/bin/rebar:	couchdb/.git
	cd couchdb && ./configure

couchdb/.git:
	git submodule update --init

.PHONY:	install
install:

debian:
	apt-get -y --no-install-recommends install git build-essential pkg-config erlang libicu-dev libmozjs185-dev libcurl4-openssl-dev

.PHONY:	test
test:

