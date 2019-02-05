#!/bin/bash
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
CONF=gnss-b210
WORK=${CRITTER}/Critter/tmp/${CONF}
mkdir -p ${WORK}
cd ${WORK}
. ../../bin/setup.sh
gnss-sdr --config_file=../../etc/${CONF}.conf --log_dir=. -logtostderr -colorlogtostderr
