#!/bin/bash
FILENAME=$1
OUTPUT=$2
TMPFILE=_${FILENAME}
TMPFILE2=_${TMPFILE}
cat ${FILENAME} | tr -d '\n' | tr -d '\t' > ${TMPFILE}
cat ${TMPFILE} | sed 's/id=userid<\/td><td>\([0-9]\{8\}\)/id=userid<\/td><td>USERID/g' > ${TMPFILE2}
cat ${TMPFILE2} | sed 's/id=passwd<\/td><td>\([0-9]\{8\}\)/id=passwd<\/td><td>PASSWORD/g' > ${OUTPUT}
rm ${TMPFILE} ${TMPFILE2}
