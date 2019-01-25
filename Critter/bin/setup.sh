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
GNURADIO=$(readlink -f ${ROOT}/gnuradio)
GNSSSDR=$(readlink -f ${GNURADIO}/gnss-sdr)
. ${HAZER}/Hazer/out/host/bin/setup
. ${GNURADIO}/setup_env.sh
export PATH=${PATH}:${GNURADIO}/lib/uhd/examples
