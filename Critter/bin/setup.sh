#!/bin/basE
# ${HOME}/src/com-diag-critter/Critter/bin/setup.sh
# ${HOME}/src/com-diag-hazer
# ${HOME}/src/gnuradio
# ${HOME}/src/gnss-sdr
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
HAZER=$(readlink -f ${ROOT}/com-diag-hazer)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
BUILD=$(readlink -f ${ROOT}/gnss-sdr-v0.0.10)
GNSSSDR=$(readlink -f ${BUILD}/gnss-sdr)
. ${HAZER}/Hazer/out/host/bin/setup
. ${BUILD}/setup_env.sh
export PATH=${PATH}:${BUILD}/lib/uhd/examples
