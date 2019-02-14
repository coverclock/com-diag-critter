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
NMEA=$(grep "^PVT.nmea_dump_filename=" ../../etc/${CONF}.conf | sed 's/^.*=//')
tail -n +0 -f ${NMEA} | gpstool -E
