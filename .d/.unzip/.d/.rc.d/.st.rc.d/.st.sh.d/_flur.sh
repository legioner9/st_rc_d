#!/bin/bash

_flur() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: treat stdin accoding menu with treat files
TAGS:
\$1 number of menu
[, \$2]
CNTL: 
    _e      : _edit body      : _edit ${sh_file}
    _t      : _edit tst_dir   : _edit ${tst_dir}
    _d      : exec tst_dir_fn : . ${tst_dir_file}
    _proc   : _edit ${dir_proc_flur}
EXAM: 
    ${FNN}

DEMO: 
    [_flur 1] as [_eval] : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh.deb1
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

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #* ${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local dir_proc_flur=${fn_data_dir}/.proc/_flur.ax

    if [[ "_proc" == "$1" ]]; then
        _edit ${dir_proc_flur}
        return 0
    fi

    #* --- START _nr2mm_min ---
    local _arr_name=()
    local _arr_result=()
    local _result=
    local item=

    IFS=$'\n'
    _arr_name=($(_df2e ${dir_proc_flur}))

    for item in ${_arr_name[@]}; do
        _arr_result+=("${dir_proc_flur}/${item}")
    done

    _arr_name+=("_edit ${dir_proc_flur}")
    _arr_result+=("_edit ${dir_proc_flur}")

    #     echo -e "
    # ${RED}--- parr2mm_ message :${BLUE}
    # GENERATOR_INFO :
    # name   from :: \$(_df2e ${dir_proc_flur})
    # result from :: full path \$(GEN_RESULT)
    # ${RED}---${NORMAL}"

    _nr2mm _arr_name _arr_result _result "$1" >/dev/null
    # echo -e "${GREEN}\$_result = $_result${NORMAL}" #print variable
    #* --- END _nr2mm_min ---
    #[[nr2mm_min]]

    if [[ ${_result} == "_edit ${dir_proc_flur}" ]]; then
        _edit ${dir_proc_flur}
        # "${_result}"
        return 0
    fi

    while IFS=$'\n' read -r line; do
        # echo -e "${HLIGHT}--- exec: $line ---${NORMAL}" #start files
        # if ! eval "$line"; then
        #     err_flag=1
        # fi
        . ${_result}

    done <"${2:-/dev/stdin}"

    unset IFS

    cd $PPWD
    return 0

}
