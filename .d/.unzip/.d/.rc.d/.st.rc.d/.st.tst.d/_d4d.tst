#!/bin/bash

___d4d_TST() {

    if ! command -v _d4d; then
        echo "TYPE_ERROR : _d4d" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_d4d.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d4d.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d4d.tst.d
    local tst_dir_file=${tst_dir}/_d4d.tst.sh


    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d4d.tst.d/_d4d.tst.sh) == "_d4d" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d4d.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d4d.tst.d/_d4d.tst.sh) == _d4d' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___d4d_TST "$@"
