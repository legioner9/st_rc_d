#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d EXEC_FALI" >&2

if true; then
    echo "_nr2mm"
fi

: >res

# _nr2mm >/dev/null

_arr_name=(a b)
_arr_res=(c d)

result_str=

_nr2mm _arr_name _arr_res result_str 2 || return 1

echo -e "${GREEN}\$result_str = $result_str${NORMAL}" #print variable

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d EXEC_FALI" >&2

echo $result_str >>res

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh true"
    return 0
fi
