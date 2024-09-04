#!/bin/bash

___ddr2Ae_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_ddr2Ae.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_ddr2Ae.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_ddr2Ae.tst.d
    local tst_dir_file=${tst_dir}/_ddr2Ae.tst.sh

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_ddr2Ae"
    fi

    : >${tst_dir}/res

    cd ${HOME}/.d/.rpn.ax.d/_tst_dir || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${HOME}/.d/.rpn.ax.d/_tst_dir" >&2
    # tree ${HOME}/.d/.rpn.ax.d/_tst_dir
    _ddr2Ae @ a >${tst_dir}/res

    flag=1
    
    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if ! diff -q res pre >/dev/null; then
        flag=0
    fi

    if [ 0 -eq "$flag" ]; then
        echo "in file://${tst_dir_file} fail" >&2
        diff res pre >&2
        return 1
    else
        echo "in file://${tst_dir_file} true"
        return 0
    fi
}

___ddr2Ae_TST_SH "$@"
