#!/bin/bash

_d2mm() {

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
MAIN: ${FNN} :: choice file from dir : \$1 upath dir \$2 ptr_result \$3 num (0|num_menu)
TAGS: 
\$1 upath dir
\$2 ptr_result 
\$3 num (0|num_menu)
CNTL: 
    _e  : _edit body      : _edit ${sh_file}
    _t  : _edit tst_dir   : _edit ${tst_dir}
    _d  : exec tst_dir_fn : . ${tst_dir_file}
    _f1 : exec tst_dir_fn : . ${flow_dir_file_1}
RETU: \$2 ptr_result as abs_path of choice file
EXAM: 
    local result_=''
    ${FNN} upath_to_dir result 0  
    echo \$result_
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${sh_file}
        cd $PPWD
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${tst_dir}
        cd $PPWD
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${tst_dir_file}
        cd $PPWD
        return 0
    fi

    if [[ "_f1" == "$1" ]]; then
        . ${flow_dir_file_1}
        cd $PPWD
        return 0
    fi

    #? ----- START _d2mm body -----

    hint="\$1 upath dir \$2 ptr_result \$3 num (0|num_menu)"
    if _isn_from ${NARGS} 3 3 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '3' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    [ -d ${ptr_path_1} ] || {
        hint="\$1: \$2: "
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${ptr_path_1}' : ${hint} : return 1"
        return 1
    }

    echo ${ARGS1}

    local arr_name_=()
    local arr_res_=()
    local name_item=
    local res_item=

    for item in $(_df2e ${ptr_path_1}); do

        name_item=file://${ptr_path_1}/$item
        res_item=${ptr_path_1}/$item

        arr_name_+=("${name_item}")
        arr_res_+=("${res_item}")

    done

    _nr2mm arr_name_ arr_res_ ${ARGS1} ${ARGS2}

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    #? ----- END _d2mm body -----

    cd $PPWD
    return 0

}
