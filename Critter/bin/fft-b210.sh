
#!/bin/bash
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
WORK=${CRITTER}/Critter/tmp/fft-b210
mkdir -p ${WORK}
cd ${WORK}
. ../../bin/setup.sh
rx_ascii_art_dft --freq 1575420000 --rate 4e6 --gain 40 --bw 4e6 --ref-lvl -30
