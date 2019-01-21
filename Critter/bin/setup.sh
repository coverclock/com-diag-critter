#!/bin/basE
# ${HOME}/src/com-diag-hazer
# ${HOME}/src/com-diag-critter
# ${HOME}/src/gnuradio
# ${HOME}/src/gnss-sdr
SELF=${SUDO_USER:-${USER}}
MINE=$(eval cd ~${SELF};pwd)
ROOT=$(readlink -f ${MINE}/src)
HAZER=$(readlink -f ${MINE}/src/com-diag-hazer)
CRITTER=$(readlink -f ${MINE}/src/com-diag-critter)
GNURADIO=$(readlink -f ${MINE}/src/gnuradio)
GNSSSDR=$(readlink -f ${MINE}/src/gnss-sdr)
. ${HAZER}/Hazer/out/host/bin/setup
. ${GNURADIO}/setup_env.sh
export PATH="${GNSSSDR}/usr/local/bin:$PATH"
