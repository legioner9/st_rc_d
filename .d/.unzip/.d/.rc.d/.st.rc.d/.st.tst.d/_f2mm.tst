#!/bin/bash

___f2mm_TST() {

    if ! command -v _f2mm; then
        echo "TYPE_ERROR : _f2mm" >&2
        return 1
    fi

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_f2mm.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2mm.sh    
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2mm.tst.d
    local tst_dir_file=${tst_dir}/_f2mm.tst.sh

    # if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2mm.tst.d/_f2mm.tst.sh) == "_f2mm" ]]; then
    #     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2mm.tst , line=${LINENO}, pwd=${PWD}" >&2
    #     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2mm.tst.d/_f2mm.tst.sh) == _f2mm' : return 1" >&2
    #     return 1
    # fi

    if ! . ${tst_dir_file}; then
        echo "in fs=file://${tst_file} , line=${LINENO}, pwd=${PWD}" >&2
        echo "EXEC_FAIL : '. ${tst_dir_file}' : return 1" >&2
        return 1
    fi
}

___f2mm_TST
