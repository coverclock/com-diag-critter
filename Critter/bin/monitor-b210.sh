#!/bin/bash
# Copyright 2019 Digital Aggregates Corporation, Arvada Colorado USA
# Licensed under the terms in LICENSE.txt
CONF=gnss-b210
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
WORK=${CRITTER}/Critter/tmp/${CONF}
cd ${WORK}
. ../../bin/setup.sh
PORT=$(grep "^Monitor.udp_port=" ../../etc/${CONF}.conf | sed 's/^.*=//')
stty sane
trap "stty sane" 1 2 3 15
../../src/monitoring-client/build/monitoring-client ${PORT}
