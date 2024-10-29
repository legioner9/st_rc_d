#!/bin/bash

___d4d_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_d4d.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d4d.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d4d.tst.d
    local tst_dir_file=${tst_dir}/_d4d.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/_d4d.d
    local data_dir_lst=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/_d4d.d/.lst

    local comm_dir_tst=${HOME}/.d/.rpn.ax.d

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_d4d"
    fi

    : >${tst_dir}/res

    rm -r tst.d/tst.dst.d
    mkdir tst.d/tst.dst.d

    cp -r tst.d/tst.init.d/. tst.d/tst.dst.d

    _d4d tst.d/tst.src.d @ tst.d/tst.dst.d

    tree tst.d/tst.src.d
    tree tst.d/tst.init.d
    tree tst.d/tst.dst.d >>${tst_dir}/res

    # rm -r tst.d/tst.dst.d
    # mkdir tst.d/tst.dst.d

    # cp -r tst.d/tst.init.d/. tst.d/tst.dst.d

    # _d4d tst.d/tst.src.d @ tst.d/tst.dst.d

    # tree tst.d/tst.dst.d >>${tst_dir}/res

    # _s2f "${HOME}" '${HOME}' ${tst_dir}/res

    # cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # tree

    # _d4d >/dev/null

    # _s2f "${HOME}" '${HOME}' ${tst_dir}/res

    #* {{fn_tst_body}}

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

___d4d_TST_SH "$@"
