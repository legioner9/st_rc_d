#!/bin/bash

___f2ad_TST() {

    if ! command -v _f2ad; then
        echo "TYPE_ERROR : _f2ad" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_f2ad.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2ad.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2ad.tst.d
    local tst_dir_file=${tst_dir}/_f2ad.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2ad.tst.d/_f2ad.tst.sh) == "_f2ad" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2ad.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2ad.tst.d/_f2ad.tst.sh) == _f2ad' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___f2ad_TST "$@"
