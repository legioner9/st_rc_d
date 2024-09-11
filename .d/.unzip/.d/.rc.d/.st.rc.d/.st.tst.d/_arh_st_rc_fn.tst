#!/bin/bash

___arh_st_rc_fn_TST() {

    if ! command -v _arh_st_rc_fn; then
        echo "TYPE_ERROR : _arh_st_rc_fn" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_arh_st_rc_fn.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_arh_st_rc_fn.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_arh_st_rc_fn.tst.d
    local tst_dir_file=${tst_dir}/_arh_st_rc_fn.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_arh_st_rc_fn.tst.d/_arh_st_rc_fn.tst.sh) == "_arh_st_rc_fn" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_arh_st_rc_fn.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_arh_st_rc_fn.tst.d/_arh_st_rc_fn.tst.sh) == _arh_st_rc_fn' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___arh_st_rc_fn_TST "$@"
