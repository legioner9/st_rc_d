#!/bin/bash

___lcu_iss_tags2ue_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_lcu_iss_tags2ue.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_iss_tags2ue.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_lcu_iss_tags2ue.tst.d
    local tst_dir_file=${tst_dir}/_lcu_iss_tags2ue.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst
    
    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/_lcu_iss_tags2ue.d
    local data_dir_lst=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/_lcu_iss_tags2ue.d/.lst

    local comm_dir_tst=${HOME}/.d/.rpn.ax.d

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_lcu_iss_tags2ue"
    fi

    : >${tst_dir}/res

    # cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # tree

    # _lcu_iss_tags2ue >/dev/null

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

___lcu_iss_tags2ue_TST_SH "$@"