#!/bin/bash

___dig_ibase2obase_TST() {

    if ! command -v _dig_ibase2obase; then
        echo "TYPE_ERROR : _dig_ibase2obase" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dig_ibase2obase.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dig_ibase2obase.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dig_ibase2obase.tst.d
    local tst_dir_file=${tst_dir}/_dig_ibase2obase.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dig_ibase2obase.tst.d/_dig_ibase2obase.tst.sh) == "_dig_ibase2obase" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dig_ibase2obase.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dig_ibase2obase.tst.d/_dig_ibase2obase.tst.sh) == _dig_ibase2obase' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___dig_ibase2obase_TST "$@"