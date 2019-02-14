# vi: set ts=4 shiftwidth=4:
# Copyright 2019 Digital Aggregates Corporation
# Licensed under the terms in README.h
# author:Chip Overclock
# mailto:coverclock@diag.com
# https://github.com/coverclock/com-diag-critter
# "Chip Overclock" is a registered trademark.
# "Digital Aggregates Corporation" is a registered trademark.
#

.PHONY:	default

default:	all

all:	src/monitoring-client/build/monitoring-client

src/monitoring-client/build/monitoring-client:
	cd src/monitoring-client; \
	mkdir -p build; \
	cd build; \
	cmake ../; \
	make

clean:
	rm -rf src/monitoring-client/build
