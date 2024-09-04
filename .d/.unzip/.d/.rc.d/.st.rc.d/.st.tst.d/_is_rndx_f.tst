#!/bin/bash

___is_rndx_f_TST() {

    if ! command -v _is_rndx_f; then
        echo "TYPE_ERROR : _is_rndx_f" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_is_rndx_f.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_rndx_f.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_rndx_f.tst.d
    local tst_dir_file=${tst_dir}/_is_rndx_f.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_rndx_f.tst.d/_is_rndx_f.tst.sh) == "_is_rndx_f" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_rndx_f.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_rndx_f.tst.d/_is_rndx_f.tst.sh) == _is_rndx_f' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___is_rndx_f_TST "$@"
