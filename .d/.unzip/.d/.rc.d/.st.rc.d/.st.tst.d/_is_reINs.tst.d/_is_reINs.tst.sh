#!/bin/bash

___is_reINs_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_is_reINs.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_reINs.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_reINs.tst.d
    local tst_dir_file=${tst_dir}/_is_reINs.tst.sh

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_is_reINs"
    fi

    : >${tst_dir}/res

    _ret2e _is_reINs "^r" "rcdse" >>${tst_dir}/res
    _ret2e _is_reINs "e$" "rcdse" >>${tst_dir}/res
    _ret2e _is_reINs "d" "rcdse" >>${tst_dir}/res
    _ret2e _is_reINs "x" "rcdse" >>${tst_dir}/res

    # cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # _is_reINs >/dev/null

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

___is_reINs_TST_SH "$@"
