#!/bin/bash

_rm_st_rc_fn() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local hint=
    local item=

    #* local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: rm any files \$1 name fn from .d/.rc.d
TAGS:
\$1 
[, \$2]
CNTL: 
    _e  : _edit body      : _edit ${sh_file}
    _t  : _edit tst_dir   : _edit ${tst_dir}
    _d  : exec tst_dir_fn : . ${tst_dir_file}
    _f1 : exec tst_dir_fn : . ${flow_dir_file_1}
EXAM: 
    ${FNN}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${sh_file}
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${tst_dir}
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${tst_dir_file}
        return 0
    fi

    if [[ "_f1" == "$1" ]]; then
        . ${flow_dir_file_1}
        return 0
    fi

    hint="rm any files \$1 name fn from .d/.rc.d"
    if _isn_from ${NARGS} 1 1 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    #* ${HOME}/.d/.rc.d/.st.rc.d/.st.d

    _is_yes "remove files '$1' function from file://${HOME}/.d/.rc.d/.st.rc.d" || {
        _st_info "REJECT_ACTION 'remove files '$1' function from file://${HOME}/.d/.rc.d/.st.rc.d' return 0 "
        return 0 
    }

    rm ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/$1.sh || {
        _st_info "FAIL_EXEC : 'rm file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/$1.sh' "
    }

    rm -r ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d || {
        _st_info "FAIL_EXEC : 'rm -r file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d' "
    }

    rm ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst || {
        _st_info "FAIL_EXEC : 'rm file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst' "
    }

    cd $PPWD
    return 0

}
