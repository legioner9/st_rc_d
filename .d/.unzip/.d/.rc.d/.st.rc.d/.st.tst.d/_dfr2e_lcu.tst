#!/bin/bash

___dfr2e_lcu_TST() {

    if ! command -v _dfr2e_lcu; then
        echo "TYPE_ERROR : _dfr2e_lcu" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dfr2e_lcu.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dfr2e_lcu.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dfr2e_lcu.tst.d
    local tst_dir_file=${tst_dir}/_dfr2e_lcu.tst.sh


    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dfr2e_lcu.tst.d/_dfr2e_lcu.tst.sh) == "_dfr2e_lcu" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dfr2e_lcu.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dfr2e_lcu.tst.d/_dfr2e_lcu.tst.sh) == _dfr2e_lcu' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___dfr2e_lcu_TST "$@"
