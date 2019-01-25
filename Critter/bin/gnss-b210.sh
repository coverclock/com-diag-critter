#!/bin/bash
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
WORK=${CRITTER}/Critter/tmp/gnss-b210
mkdir -p ${WORK}
cd ${WORK}
. ../../bin/setup.sh
gnss-sdr --config_file=../../etc/gnss-b210.conf --log_dir=. -logtostderr -colorlogtostderr
