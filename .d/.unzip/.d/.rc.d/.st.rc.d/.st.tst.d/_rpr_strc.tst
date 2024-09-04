#!/bin/bash

___rpr_strc_TST() {

    if ! command -v _rpr_strc; then
        echo "TYPE_ERROR : _rpr_strc" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_rpr_strc.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_rpr_strc.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_rpr_strc.tst.d
    local tst_dir_file=${tst_dir}/_rpr_strc.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_rpr_strc.tst.d/_rpr_strc.tst.sh) == "_rpr_strc" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_rpr_strc.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_rpr_strc.tst.d/_rpr_strc.tst.sh) == _rpr_strc' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___rpr_strc_TST "$@"
