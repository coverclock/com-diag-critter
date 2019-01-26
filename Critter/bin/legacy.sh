#!/bin/bash
# ${HOME}/src/com-diag-critter/Critter/bin/setup.sh
# ${HOME}/src/com-diag-hazer
# ${HOME}/Projects/critter/gnuradio
# ${HOME}/Projects/critter/gnss-sdr
SELF=${SUDO_USER:-${USER}}
MINE=$(eval cd ~${SELF};pwd)
HAZER=$(readlink -f ${MINE}/src/com-diag-hazer)
WORK=$(readlink -f ${MINE}/Projects/critter)
GNURADIO="${WORK}/gnuradio"
GNSSSDR="${WORK}/gnss-sdr"
. ${HAZER}/Hazer/out/host/bin/setup
. ${GNURADIO}/setup_env.sh
export PATH=${PATH}:${GNURADIO}/lib/uhd/examples
export PATH=${PATH}:${GNSSSDR}/usr/local/bin
