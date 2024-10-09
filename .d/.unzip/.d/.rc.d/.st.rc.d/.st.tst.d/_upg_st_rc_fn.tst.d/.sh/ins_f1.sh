#!/bin/bash

echo -e "
echo \"that _utmp fn_f1\"
" >${TMP_DIR_ST_RC}/fn_f1_body.file

_f2f ${TMP_DIR_ST_RC}/fn_f1_body.file "{{fn_f1_body}}" ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_utmp.tst.d/_utmp.tst.sh.deb1

cat ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_utmp.tst.d/_utmp.tst.sh.deb1