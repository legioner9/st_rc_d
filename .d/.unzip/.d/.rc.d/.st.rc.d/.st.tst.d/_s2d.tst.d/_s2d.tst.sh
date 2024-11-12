#!/bin/bash

___s2d_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_s2d.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2d.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2d.tst.d
    local tst_dir_file=${tst_dir}/_s2d.tst.sh

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_s2d"
    fi

    : >res

    cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # _s2ad >/dev/null

    rm -r res.d

    mkdir res.d

    cp -r ${HOME}/.d/.rpn.ax.d/_tst_dir/. res.d

    _s2d "XXX t" "vfds eee3" res.d

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2
    
    echo -e "${HLIGHT}--- exec: cat tst.d/res.d/dir.a/tst_dir/dir.a/file_to_ins_1.file >res---${NORMAL}" #start files
    cat tst.d/res.d/dir.a/tst_dir/dir.a/file_to_ins_1.file >>res
    echo >>res
    cat tst.d/res.d/.dir.a/tst_dir/_dir.a/file_to_ins_1.file >>res
    
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

___s2d_TST_SH "$@"
