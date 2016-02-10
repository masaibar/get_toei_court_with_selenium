#!/bin/bash
FILENAME=$1
OUTPUT=$2
TMPFILE=_${FILENAME}
TMPFILE2=_${TMPFILE}
cat ${FILENAME} | tr -d '\n' | tr -d '\t' > ${TMPFILE}
cat ${TMPFILE} | sed 's/name=userId<\/td><td>\([0-9]\{8\}\)/name=userId<\/td><td>USERID/g' > ${TMPFILE2}
cat ${TMPFILE2} | sed 's/name=password<\/td><td>\([0-9]\{8\}\)/name=password<\/td><td>PASSWORD/g' > ${OUTPUT}
rm ${TMPFILE} ${TMPFILE2}
