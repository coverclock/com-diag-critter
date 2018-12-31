#!/bin/bash
SELF=${SUDO_USER:-${USER}}
HERE=$(eval cd ~${SELF}; pwd)
ROOT="${HERE}/Projects/critter"
GNURADIO="${ROOT}/gnuradio"
GNSSSDR="${ROOT}/gnss-sdr"
. ${GNURADIO}/setup_env.sh
export PATH="${GNSSSDR}/usr/local/bin:$PATH"
