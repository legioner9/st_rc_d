#!/bin/bash

___d2mm_TST_SH() {

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_d2mm.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2mm.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2mm.tst.d
    local tst_dir_file=${tst_dir}/_d2mm.tst.sh

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_d2mm"
    fi

    : >res

    cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # _d2mm tst.lst.d 0 0

    # _d2mm >/dev/null
    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2
    flag=1

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

___d2mm_TST_SH
