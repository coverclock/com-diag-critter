#!/bin/bash
# Copyright 2019 Digital Aggregates Corporation, Colorado, USA
# Licensed under the terms in LICENSE.txt
# Chip Overclock <coverclock@diag.com>
# https://github.com/coverclock/com-diag-critter

PROGRAM=$(basename $0 ".sh")
DEVICE=${1:-"/dev/ttyACM0"}
RATE=${2:-9600}
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
WORK=${CRITTER}/Critter/tmp/${PROGRAM}
mkdir -p ${WORK}
cd ${WORK}
. ../../bin/setup.sh
gpstool -D ${DEVICE} -b ${RATE} -8 -n -1 -E -t 10 2> ${PROGRAM}.err
