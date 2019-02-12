#!/bin/bash
# Copyright 2019 Digital Aggregates Corporation, Arvada Colorado USA
# Licensed under the terms in LICENSE.txt
CONF=fft-b210
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
WORK=${CRITTER}/Critter/tmp/${CONF}
mkdir -p ${WORK}
cd ${WORK}
. ../../bin/setup.sh
rx_ascii_art_dft --freq 1575420000 --rate 4e6 --gain 40 --bw 4e6 --ref-lvl -30
