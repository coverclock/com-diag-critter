#!/bin/basE
# ${HOME}/src/com-diag-hazer
# ${HOME}/src/com-diag-critter
# ${HOME}/Projects/critter
SELF=${SUDO_USER:-${USER}}
MINE=$(eval cd ~${SELF};pwd)
HAZER=$(readlink -f ${MINE}/src/com-diag-hazer)
CRITTER=$(readlink -f ${MINE}/src/com-diag-critter)
WORK=$(readlink -f ${MINE}/Projects/critter)
GNURADIO="${WORK}/gnuradio"
GNSSSDR="${WORK}/gnss-sdr"
. ${HAZER}/Hazer/out/host/bin/setup
. ${GNURADIO}/setup_env.sh
export PATH="${GNSSSDR}/usr/local/bin:$PATH"
