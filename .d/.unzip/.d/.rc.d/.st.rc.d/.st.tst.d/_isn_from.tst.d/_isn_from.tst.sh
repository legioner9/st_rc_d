#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst.d EXEC_FALI" >&2

if true; then
    echo "_isn_from"
fi

: >res

# _isn_from >/dev/null

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst.d/_isn_from.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst.d/_isn_from.tst.sh true"
    return 0
fi