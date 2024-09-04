#!/bin/bash

___iac_lcu_in_d_TST() {

    if ! command -v _iac_lcu_in_d; then
        echo "TYPE_ERROR : _iac_lcu_in_d" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_iac_lcu_in_d.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_iac_lcu_in_d.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_iac_lcu_in_d.tst.d
    local tst_dir_file=${tst_dir}/_iac_lcu_in_d.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_iac_lcu_in_d.tst.d/_iac_lcu_in_d.tst.sh) == "_iac_lcu_in_d" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_iac_lcu_in_d.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_iac_lcu_in_d.tst.d/_iac_lcu_in_d.tst.sh) == _iac_lcu_in_d' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___iac_lcu_in_d_TST "$@"
