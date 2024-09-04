#!/bin/bash

_lnv2ad() {

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

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: insert list name value cntx from \$1 file.lst to dir (-A, NOT prev) \$2
TAGS:
\$1 
[, \$2]
CNTL: 
    _e : _edit body      : _edit ${sh_file}
    _t : _edit tst_dir   : _edit ${tst_dir}
    _d : exec tst_dir_fn : . ${tst_dir_file}
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

    hint="insert list name value cntx from \$1 file.lst to dir (-A, NOT prev) \$2"
    if _isn_from ${NARGS} 2 2 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    local ptr_path_2="$2"
    ptr_path_2="$(_abs_path "${PPWD}" "ptr_path_2")"

    [ -f ${ptr_path_1} ] || {
        hint="\$1 file.lst"
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : NOT_FILE : 'file://${ptr_path_1}' : ${hint} : return 1"
        return 1
    }

    [ -d ${ptr_path_2} ] || {
        hint="\$2 reciver dir"
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${ptr_path_2}' : ${hint} : return 1"
        return 1
    }

    _lnv2e ${ptr_path_1}

    local item

    for item in $(_f2e ${ptr_path_1}); do
        echo -e "${HLIGHT}--- _s2ad {{$item}} \$$item ${ptr_path_2} ---${NORMAL}" #start files
        eval "_s2ad {{$item}} \$$item ${ptr_path_2}"
    done

    cd $PPWD
    return 0

}
