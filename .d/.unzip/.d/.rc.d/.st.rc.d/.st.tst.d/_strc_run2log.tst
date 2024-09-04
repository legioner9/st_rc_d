#!/bin/bash

___strc_run2log_TST() {

    if ! command -v _strc_run2log; then
        echo "TYPE_ERROR : _strc_run2log" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_strc_run2log.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_strc_run2log.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_strc_run2log.tst.d
    local tst_dir_file=${tst_dir}/_strc_run2log.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_strc_run2log.tst.d/_strc_run2log.tst.sh) == "_strc_run2log" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_strc_run2log.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_strc_run2log.tst.d/_strc_run2log.tst.sh) == _strc_run2log' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___strc_run2log_TST "$@"
