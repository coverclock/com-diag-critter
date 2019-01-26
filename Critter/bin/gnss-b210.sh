#!/bin/bash
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
WORK=${CRITTER}/Critter/tmp/gnss-b210
mkdir -p ${WORK}
cd ${WORK}
. ../../bin/setup.sh
CONF=gnss-b210
gnss-sdr --config_file=../../etc/${CONF}.conf --log_dir=. -logtostderr -colorlogtostderr
