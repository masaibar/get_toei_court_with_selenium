BASE=$1
OUTPUT=$2
SCRIPT_BASE=script_${BASE}
TMP=tmp

for i in `cat lists/list_names `;do sh bin/add_names.sh $i ${BASE}; done > ${SCRIPT_BASE}
for i in `cat lists/list_userIds `;do cat ${SCRIPT_BASE} | sed "1, /USERID/s/USERID/${i}/" > ${TMP} ; mv -f ${TMP} ${SCRIPT_BASE}; done
for i in `cat lists/list_passwords `;do cat ${SCRIPT_BASE} | sed "1, /PASSWORD/s/PASSWORD/${i}/" > ${TMP}  ; mv -f ${TMP} ${SCRIPT_BASE}; done
mv ${SCRIPT_BASE} ${OUTPUT}
