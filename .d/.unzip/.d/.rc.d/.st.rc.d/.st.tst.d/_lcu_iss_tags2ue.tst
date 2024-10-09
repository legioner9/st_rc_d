#!/bin/bash

___lcu_iss_tags2ue_TST() {

    if ! command -v _lcu_iss_tags2ue; then
        echo "TYPE_ERROR : _lcu_iss_tags2ue" >&2
        return 1
    fi

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_lcu_iss_tags2ue.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_iss_tags2ue.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_iss_tags2ue.tst.d
    local tst_dir_file=${tst_dir}/_lcu_iss_tags2ue.tst.sh


    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_iss_tags2ue.tst.d/_lcu_iss_tags2ue.tst.sh) == "_lcu_iss_tags2ue" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_iss_tags2ue.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_iss_tags2ue.tst.d/_lcu_iss_tags2ue.tst.sh) == _lcu_iss_tags2ue' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___lcu_iss_tags2ue_TST "$@"
