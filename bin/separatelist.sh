#!/bin/bash
FILENAME=$1
LISTSDIR=lists

cat ${FILENAME} | awk '{print $1}' > ${LISTSDIR}/${FILENAME}_names
cat ${FILENAME} | awk '{print $2}' > ${LISTSDIR}/${FILENAME}_userIds
cat ${FILENAME} | awk '{print $3}' > ${LISTSDIR}/${FILENAME}_passwords
