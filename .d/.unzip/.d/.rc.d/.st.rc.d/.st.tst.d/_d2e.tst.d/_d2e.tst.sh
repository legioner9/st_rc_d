#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d EXEC_FALI" >&2

if true; then
    echo "_d2e"
fi

# _d2e >/dev/null

tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d

: >${tst_dir}/res

_d2e ${HOME}/.d/.rpn.ax.d/_tst_dir a >>${tst_dir}/res

cd ${HOME}/.d/.rpn.ax.d/_tst_dir || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${HOME}/.d/.rpn.ax.d/_tst_dir" >&2
# tree ${HOME}/.d/.rpn.ax.d/_tst_dir
_d2e @ a >>${tst_dir}/res

flag=1

cd ${tst_dir}

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh true"
    return 0
fi