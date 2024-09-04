#!/bin/bash

___is_sINs_TST() {

    if ! command -v _is_sINs; then
        echo "TYPE_ERROR : _is_sINs" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_is_sINs.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_sINs.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_sINs.tst.d
    local tst_dir_file=${tst_dir}/_is_sINs.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_sINs.tst.d/_is_sINs.tst.sh) == "_is_sINs" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_sINs.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_sINs.tst.d/_is_sINs.tst.sh) == _is_sINs' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___is_sINs_TST "$@"
