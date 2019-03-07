#!/bin/basE
# Copyright 2019 Digital Aggregates Corporation, Arvada Colorado USA
# Licensed under the terms in LICENSE.txt
# ${HOME}/src/com-diag-critter/Critter/bin/setup.sh
# ${HOME}/src/com-diag-hazer
# ${HOME}/src/gnuradio
# ${HOME}/src/gnss-sdr
# GNU Radio 3.7.13.4, gnss-sdr 0.0.10.git-next-ca2e22c
BUILD=master
#BUILD=next
#BUILD=v0.0.10
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
HAZER=$(readlink -f ${ROOT}/com-diag-hazer)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
BUILD=$(readlink -f ${ROOT}/gnss-sdr-${BUILD})
GNSSSDR=$(readlink -f ${BUILD}/gnss-sdr)
. ${HAZER}/Hazer/out/host/bin/setup
. ${BUILD}/setup_env.sh
export PATH=${PATH}:${BUILD}/lib/uhd/examples:${BUILD}/lib/uhd/utils
