#!/bin/bash

___date_TST() {

    if ! command -v _date; then
        echo "TYPE_ERROR : _date" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_date.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_date.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_date.tst.d
    local tst_dir_file=${tst_dir}/_date.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_date.tst.d/_date.tst.sh) == "_date" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_date.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_date.tst.d/_date.tst.sh) == _date' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___date_TST "$@"
