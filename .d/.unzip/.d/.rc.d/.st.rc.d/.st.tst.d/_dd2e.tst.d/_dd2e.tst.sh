#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dd2e.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dd2e.tst.d EXEC_FALI" >&2

if true; then
    echo "_dd2e"
fi

# _dd2e >/dev/null



tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dd2e.tst.d

: >${tst_dir}/res

_dd2e ${HOME}/.d/.rpn.ax.d/_tst_dir a >>${tst_dir}/res

cd ${HOME}/.d/.rpn.ax.d/_tst_dir || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${HOME}/.d/.rpn.ax.d/_tst_dir" >&2
# tree ${HOME}/.d/.rpn.ax.d/_tst_dir
_dd2e @ a >>${tst_dir}/res

flag=1

cd  ${tst_dir} || _st_exit "FAIL cd  ${tst_dir}"

diff -q res pre

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dd2e.tst.d/_dd2e.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dd2e.tst.d/_dd2e.tst.sh true"
    return 0
fi