#!/bin/bash

_lnv2e() {

    local _FNN=${FUNCNAME[0]}
    local _PPWD=$PWD
    local _ARGS=("$@")

    local _ARGS0="$1"
    local _ARGS1="$2"
    local _ARGS2="$3"
    local _ARGS3="$4"

    local _NARGS=$#

    local hint=
    local item=

    #* local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local _sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${_FNN}.sh
    local _tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${_FNN}.sh
    local _tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${_FNN}.tst.d
    local _tst_dir_file=${_tst_dir}/${_FNN}.tst.sh

    if ! [[ -d ${_PPWD} ]]; then
        echo "in fs= file://${_sh_file} , line=${LINENO}, ${_FNN}() : \${PWD} NOT_DIR : 'file://${_PPWD}' : ${hint} : return 1"
        return 1
    fi

    # echo -e "${CYAN}--- start : ${_FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${_FNN} :: print list name value cntx from \$1 file.lst
TAGS:
\$1 file.lst
[, \$2]
CNTL: 
    _e : _edit body      : _edit ${_sh_file}
    _t : _edit _tst_dir   : _edit ${_tst_dir}
    _d : exec tst_dir_fn : . ${_tst_dir_file}
EXAM: 
    ${_FNN}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${_sh_file}
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${_tst_dir}
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${_tst_dir_file}
        return 0
    fi

    hint="\$1 file.lst"
    if _isn_from ${_NARGS} 1 1 "in fs= file://${_sh_file}, line=${LINENO}, ${_FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${_NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #! ptr_path
    local ptr_path="$1"
    ptr_path="$(_abs_path "${_PPWD}" "ptr_path")"
    #[[ptr_path]]

    [ -f ${ptr_path} ] || {
        hint="\$1 file.lst"
        _st_exit "in fs= file://${_sh_file} , line=${LINENO}, ${_FNN}() : NOT_FILE : 'file://${ptr_path}' : ${hint} : return 1"
        return 1
    }

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    # echo -e "${GREEN}\$ptr_path = file://$ptr_path${NORMAL}" #print variable

    local item=

    echo -e "${BLUE}--- START : ${_FNN}() file://${ptr_path} ---${NORMAL}" #sistem info mesage

    for item in $(_f2e $ptr_path); do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        eval "echo \\\${$item} = \$$item"
    done
    echo -e "${BLUE}--- END : ${_FNN}() file://${ptr_path} ---${NORMAL}" #sistem info mesage
    cd $_PPWD
    return 0

}
