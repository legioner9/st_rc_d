#!/bin/bash

___lcu_is_z_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_lcu_is_z.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_is_z.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_is_z.tst.d
    local tst_dir_file=${tst_dir}/_lcu_is_z.tst.sh

    local comm_dir_tst=${HOME}/.d/.rpn.ax.d

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_lcu_is_z"
    fi

    : >${tst_dir}/res

    cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # _ret2e _lcu_is_z full/__.lcu @ >>${tst_dir}/res
    # _ret2e _lcu_is_z full/__.lcu _main >>${tst_dir}/res
    # _ret2e _lcu_is_z full/__.lcu _tags >>${tst_dir}/res

    # _ret2e _lcu_is_z main/__.lcu >>${tst_dir}/res
    # _ret2e _lcu_is_z main/__.lcu _main >>${tst_dir}/res
    # _ret2e _lcu_is_z main/__.lcu _tags >>${tst_dir}/res

    # _ret2e _lcu_is_z tags/__.lcu @ >>${tst_dir}/res
    # _ret2e _lcu_is_z tags/__.lcu _main >>${tst_dir}/res
    # _ret2e _lcu_is_z tags/__.lcu _tags >>${tst_dir}/res

    # _ret2e _lcu_is_z null/__.lcu @ >>${tst_dir}/res
    # _ret2e _lcu_is_z null/__.lcu _main >>${tst_dir}/res
    # _ret2e _lcu_is_z null/__.lcu _tags >>${tst_dir}/res
    # tree

    # _lcu_is_z >/dev/null

    # _s2f "${HOME}" '${HOME}' ${tst_dir}/res

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

___lcu_is_z_TST_SH "$@"
