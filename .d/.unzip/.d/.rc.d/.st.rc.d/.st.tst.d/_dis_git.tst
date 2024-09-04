#!/bin/bash

___dis_git_TST() {

    if ! command -v _dis_git; then
        echo "TYPE_ERROR : _dis_git" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dis_git.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dis_git.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dis_git.tst.d
    local tst_dir_file=${tst_dir}/_dis_git.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dis_git.tst.d/_dis_git.tst.sh) == "_dis_git" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dis_git.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dis_git.tst.d/_dis_git.tst.sh) == _dis_git' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___dis_git_TST "$@"
