#!/bin/bash

_lcu2d() {

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

    echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: add LCUflow to u@path dir \$1
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

    hint="add LCUflow to u@path dir \$1"
    if _isn_from ${NARGS} 1 1 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    echo -e "${GREEN}\$ptr_path_1 = $ptr_path_1${NORMAL}" #print variable

    [ -d $ptr_path_1 ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://$ptr_path_1' : ${hint} : return 1"
        return 1
    }

    _gig_lcu_in_d() {
        local FNN=${FUNCNAME[0]}
        echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage
        : >"$1"/__.lcu
        {
            echo "RNDX: $(_rnd2e)"
            echo "MAIN: "
            echo "TAGS: "
        } >>"$1"/__.lcu
    }

    _is_lcu_d() {
        local FNN=${FUNCNAME[0]}                              # dir with lcu
        echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage
        local _file_lcu=$1/__.lcu
        local flag_err=0
        cat ${_file_lcu} | grep "RNDX: " || {
            _st_info "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : NOT_IN_CONDITION : 'file://$1/__.lcu without RNDX:' : ${hint} : flag_err=1"
            return 1
        }
        cat ${_file_lcu} | grep "MAIN: " || {
            _st_info "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : NOT_IN_CONDITION : 'file://$1/__.lcu without MAIN:' : ${hint} : flag_err=1"
            return 1
        }
        cat ${_file_lcu} | grep "TAGS: " || {
            _st_info "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : NOT_IN_CONDITION : 'file://$1/__.lcu without TAGS:' : ${hint} : flag_err=1"
            return 1
        }

        _is_rndx_f ${_file_lcu} || {
            _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_is_rndx_f file://${_file_lcu}' : ${hint} : return 1"
            return 1
        }

        return 0

    }

    # _is_rndx_f() {

    #     local FNN=${FUNCNAME[0]}                              # dir with lcu
    #     echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage
    #     local _file_lcu=$1
    #     local rndx_str=$(cat ${_file_lcu} | grep "RNDX: ")

    #     # echo -e "${GREEN}\$rndx_str = $rndx_str${NORMAL}" #print variable

    #     rndx_str=${rndx_str:6}

    #     echo -e "${GREEN}\$rndx_str = $rndx_str${NORMAL}" #print variable

    #     # if [[ $rndx_str =~ ([a-zA-Z]+) && $rndx_str =~ ([0-9]+) ]]; then
    #     if [[ ${rndx_str} =~ ([a-f]+) ]] || [[ ${rndx_str} =~ ([0-9]+) ]] || [[ ${#rndx_str} -eq 32 ]]; then
    #         echo -e "${HLIGHT}--- return 0 ---${NORMAL}" #start files
    #         return 0
    #     else
    #         echo -e "${HLIGHT}--- return 1 ---${NORMAL}" #start files
    #         return 1
    #     fi

    #     return 0
    # }

    local lcu_file
    local lcu_dir

    lcu_file=$ptr_path_1/__.lcu
    lcu_dir=$(dirname $lcu_file)

    if [ -f $lcu_file ]; then
        echo -e "${HLIGHT}--- -f file://$lcu_file ---${NORMAL}" #start files

        _is_lcu_d $lcu_dir || {
            _st_info "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_is_lcu_d file://$lcu_dir' : ${hint} : rm && gig .lcu"
            rm $lcu_file
            _gig_lcu_in_d $lcu_dir
        }
        # _is_rndx_f $lcu_file || {
        #     _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_is_rndx_f file://$lcu_file' : ${hint} : return 1"
        #     return 1
        # }
    else
        _gig_lcu_in_d $lcu_dir
    fi

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    cd $PPWD
    return 0

}
