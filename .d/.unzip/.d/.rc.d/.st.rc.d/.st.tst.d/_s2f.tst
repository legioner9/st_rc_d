#!/bin/bash

___s2f_TST() {

    if ! command -v _s2f; then
        echo "TYPE_ERROR : _s2f" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_s2f.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d
    local tst_dir_file=${tst_dir}/_s2f.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d/_s2f.tst.sh) == "_s2f" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d/_s2f.tst.sh) == _s2f' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___s2f_TST "$@"
