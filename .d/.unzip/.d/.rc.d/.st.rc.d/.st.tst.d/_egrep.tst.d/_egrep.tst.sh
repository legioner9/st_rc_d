#!/bin/bash

___egrep_TST_SH() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_egrep.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_egrep.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_egrep.tst.d
    local tst_dir_file=${tst_dir}/_egrep.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/_egrep.d
    local data_dir_lst=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/_egrep.d/.lst

    local comm_dir_tst=${HOME}/.d/.rpn.ax.d

    cd ${tst_dir} || echo "in file://${tst_dir_file} : EXEC_FAIL : cd ${tst_dir}" >&2

    if true; then
        echo "_egrep"
    fi

    : >${tst_dir}/res

    # cd tst.d || echo "in file://${tst_dir_file} : EXEC_FAIL : cd tst.dir" >&2

    # tree

    local var=$(echo -e "
    regtt
    uuugt
    muy
    ")

    echo "tesed strings: begin" >>${tst_dir}/res
    echo "$var" >>${tst_dir}/res
    echo "tesed strings: end" >>${tst_dir}/res

    echo "-- _egrep gt --" >>${tst_dir}/res
    _egrep gt <<<$var >>${tst_dir}/res

    echo "-- _egrep gt --" >>${tst_dir}/res
    echo -e "
    regtt
    uuugt
    muy
    " | _egrep gt >>${tst_dir}/res

    echo "-- _egrep eg|mu --" >>${tst_dir}/res
    echo -e "
    regtt
    uuugt
    muy
    " | _egrep "eg|mu" >>${tst_dir}/res

    echo "-- _egrep gt&uu --" >>${tst_dir}/res
    echo -e "
    regtt
    uuugt
    muy
    " | _egrep "gt&uu" >>${tst_dir}/res

    local tmp_file=${tst_dir}/tst.d/_egrep.res
    touch ${tst_dir}/tst.d/_egrep.res

    echo -e "
    regtt
    uuugt
    muy
    " >${tmp_file}

    echo "-- _egrep gt --" >>${tst_dir}/res
    _egrep gt ${tmp_file} >>${tst_dir}/res

    echo "-- _egrep eg|mu --" >>${tst_dir}/res
    _egrep "eg|mu" ${tmp_file} >>${tst_dir}/res

    echo "-- _egrep gt&uu --" >>${tst_dir}/res
    _egrep "gt&uu" ${tmp_file} >>${tst_dir}/res

    # _egrep >/dev/null

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

___egrep_TST_SH "$@"
