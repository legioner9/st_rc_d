#!/bin/bash

___f2ad_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_f2ad.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2ad.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2ad.tst.d
    local tst_dir_file=${tst_dir}/_f2ad.tst.sh

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_f2ad"
    fi

    : >res

    cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # _s2ad >/dev/null

    rm -r res.d

    cp -r init.d res.d

    _f2ad file.insert "{{reciver}}" res.d

    echo -e "${HLIGHT}--- exec: cat res.d/.dir/_2.file ---${NORMAL}" #start files

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    cat tst.d/res.d/.dir/_2.file >res
    echo >>res

    flag=1

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if ! diff -q res pre >/dev/null; then
        flag=0
    fi

    if [ 0 -eq "$flag" ]; then
        echo "in file://${tst_dir_file} fail" >&2
        diff res pre >&2
        return 1
    else
        echo "in file://${tst_dir_file} true"
        return 0
    fi
}

___f2ad_TST_SH "$@"
