#!/bin/bash

___arh_st_rc_fn_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_arh_st_rc_fn.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_arh_st_rc_fn.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_arh_st_rc_fn.tst.d
    local tst_dir_file=${tst_dir}/_arh_st_rc_fn.tst.sh

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_arh_st_rc_fn"
    fi

    : >${tst_dir}/res

    # cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # _arh_st_rc_fn >/dev/null

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

___arh_st_rc_fn_TST_SH "$@"