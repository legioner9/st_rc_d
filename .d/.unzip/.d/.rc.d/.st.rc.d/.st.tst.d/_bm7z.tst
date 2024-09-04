#!/bin/bash

___bm7z_TST() {

    if ! command -v _bm7z; then
        echo "TYPE_ERROR : _bm7z" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_bm7z.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_bm7z.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_bm7z.tst.d
    local tst_dir_file=${tst_dir}/_bm7z.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_bm7z.tst.d/_bm7z.tst.sh) == "_bm7z" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_bm7z.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_bm7z.tst.d/_bm7z.tst.sh) == _bm7z' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___bm7z_TST "$@"
