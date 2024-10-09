#!/bin/bash

___egrep_TST() {

    if ! command -v _egrep; then
        echo "TYPE_ERROR : _egrep" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_egrep.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_egrep.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_egrep.tst.d
    local tst_dir_file=${tst_dir}/_egrep.tst.sh


    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_egrep.tst.d/_egrep.tst.sh) == "_egrep" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_egrep.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_egrep.tst.d/_egrep.tst.sh) == _egrep' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___egrep_TST "$@"
