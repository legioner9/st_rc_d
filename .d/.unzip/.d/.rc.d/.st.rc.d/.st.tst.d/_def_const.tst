#!/bin/bash

___def_const_TST() {

    if ! command -v _def_const; then
        echo "TYPE_ERROR : _def_const" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_def_const.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_def_const.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_def_const.tst.d
    local tst_dir_file=${tst_dir}/_def_const.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_def_const.tst.d/_def_const.tst.sh) == "_def_const" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_def_const.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_def_const.tst.d/_def_const.tst.sh) == _def_const' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___def_const_TST "$@"
