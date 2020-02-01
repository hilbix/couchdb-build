# CouchDB build

Automate build of CouchDB for inclusion and track as a `git submodule`.

## Usage

	git submodule add https://github.com/hilbix/couchdb-build.git couchdb
	cd couchdb
	make
	sudo make install

## WTF why?

Currently CouchDB is not in Debian Buster. It's probably easy to compile it yourself.  However this does not document how it must be done.

Also I use Cirrus-CI to check all my builds, so I want to use that, because it only needs read access to my GitHub repo.

> Note that giving write access to any 3rd party is a Grossly Negligent Security Breach.
> So Travis-CI is a no-go for me, as this requires full write access to my GitHub repo.

This also documents how it was done and allows to understand in a few years what was done.

All this depends on is:

- Debian Buster
- And this `git` repo


## FAQ

License?

- Are you kidding?  There is nothing which can be copyrighted in here!
- So this is free as free beer, free speech and free baby.

Contact?  Contrib?

- GitHub PR/Issue

