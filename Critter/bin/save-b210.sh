#!/bin/bash
# Copyright 2019 Digital Aggregates Corporation, Arvada Colorado USA
# Licensed under the terms in LICENSE.txt
CONF=gnss-b210
PROGRAM=$(basename $0 .sh)
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
WORK=${CRITTER}/Critter/tmp/${CONF}
. ${CRITTER}/Critter/bin/setup.sh
SAVE=$(mktemp -d ${CRITTER}/Critter/tmp/${PROGRAM}.XXXXXXXX)
trap "rm -rf ${SAVE}" HUP INT TERM
cp ${WORK}/* ${SAVE}
TIME=${CRITTER}/Critter/tmp/${PROGRAM}-$(date -u +%Y%m%dT%H%M%S.%N%:z)
mv ${SAVE} ${TIME}
exit 0
