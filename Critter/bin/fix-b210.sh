#!/bin/bash
# Copyright 2019 Digital Aggregates Corporation, Arvada Colorado USA
# Licensed under the terms in LICENSE.txt
CONF=gnss-b210
HERE=$(dirname ${BASH_SOURCE})
THERE=$(cd ${HERE}; pwd)
ROOT=$(readlink -f ${THERE}/../../..)
CRITTER=$(readlink -f ${ROOT}/com-diag-critter)
WORK=${CRITTER}/Critter/tmp/${CONF}
cd ${WORK}
. ../../bin/setup.sh
NMEA=$(grep "^PVT.nmea_dump_filename=" ../../etc/${CONF}.conf | sed 's/^.*=//')
gpstool -R < ${NMEA}  2> /dev/null | awk '
    BEGIN   { F=0; R=0; }
    /^TIM / { T=substr($2, 0, 19) "Z"; next; }
    /^POS / { N=$2; W=$3; next; }
    /^ALT / { A=$3; next; }
    /^INT / { if ((T!=OT)||(N!=ON)||(W!=OW)||(A!=OA)) { print T, N, W, A; OT = T; ON=N; OW=W; OA=A; F=F+1; } R=R+1; next; }
    END     { print F "/" R; }
'
