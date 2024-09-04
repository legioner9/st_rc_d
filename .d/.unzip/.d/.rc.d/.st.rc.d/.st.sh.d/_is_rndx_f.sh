#!/bin/bash

_is_rndx_f() {

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
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: is? \$1 file contane str 'RNDX: \$(_rnd2e)'
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

    hint="is in \$1 file str 'RNDX: \$(_rnd2e)'"
    if _isn_from ${NARGS} 1 1 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    local rndx_str=$(cat ${ptr_path_1} | grep "RNDX: ")

    if [ -z "${rndx_str}" ] || [ -z "${rndx_str:6}" ]; then
        return 1
    fi

    rndx_str=${rndx_str:6}

    # echo -e "${GREEN}\$rndx_str = $rndx_str${NORMAL}" #print variable

    # if [[ $rndx_str =~ ([a-zA-Z]+) && $rndx_str =~ ([0-9]+) ]]; then
    # if [[ ${rndx_str} =~ ([a-f]+) ]] || [[ ${rndx_str} =~ ([0-9]+) ]] || [[ ${#rndx_str} -eq 32 ]]; then
    if [[ ${rndx_str} =~ ([a-f]+) && ${#rndx_str} -eq 32 && ! ${rndx_str} =~ [^[:alnum:]] ]]; then
        # echo -e "${HLIGHT}--- return 0 ---${NORMAL}" #start files
        return 0
    else
        # echo -e "${HLIGHT}--- return 1 ---${NORMAL}" #start files
        return 1
    fi

    return 0

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    cd $PPWD
    return 0

}
