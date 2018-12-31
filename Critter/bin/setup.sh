#!/bin/bash
ROOT="/home/jsloan/Projects/critter"
GNURADIO="${ROOT}/gnuradio"
GNSSSDR="${ROOT}/gnss-sdr"
. ${GNURADIO}/setup_env.sh
export PATH="${GNSSSDR}/usr/local/bin:$PATH"
