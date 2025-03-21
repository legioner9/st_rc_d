#!/bin/bash

_drNTf() {

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

    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d

    local hie_file=${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${FNN}.hie

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: stdout files recurciv in \$1 newer that \$2 file
TAGS: 
\$1 
[, \$2]
CNTL: 
    _e      : _edit body            : _edit file://${sh_file}
    _t      : _edit tst_dir         : _edit file://${tst_dir}
    _d      : exec tst_dir_fn       : . file://${tst_dir_file}
    _f1     : exec flow_dir_file_1  : . file://${flow_dir_file_1}
    _f1_e   : _edit flow_dir_file_1 : _edit file://${flow_dir_file_1}
    _hie_m  : more hie_file         : more file://${hie_file} 
    _hie_e  : _edit hie_file        : _edit file://${hie_file} 
    _data_e : _edit data_dir        : _edit file://${data_dir} 

RETU: 
EXAM: 
    ${FNN}
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

    if [[ "_f1_e" == "$1" ]]; then
        _edit ${flow_dir_file_1}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_m" == "$1" ]]; then
        more ${hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_e" == "$1" ]]; then
        _edit ${hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_data_e" == "$1" ]]; then
        _edit ${datd_dir}
        cd $PPWD
        return 0
    fi

    #? ----- START _drNTf body -----

    hint="hint -> stdout files recurciv in \$1 newer that \$2 file"
    if _isn_from ${NARGS} 2 2 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    [ -d $ptr_path_1 ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$1) : 'file://$ptr_path_1' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_2="$2"
    ptr_path_2="$(_abs_path "${PPWD}" "ptr_path_2")"

    [ -f $ptr_path_2 ] || {
        _st_exit "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : NOT_FILE (\$2) : 'file://$ptr_path_1' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    # cd  $ptr_path_1 || {
    #     _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$1) : 'file://$ptr_path_1' : ${hint} : return 1"
    #     cd $PPWD
    #     return 1
    # }

    find $ptr_path_1 -newer $ptr_path_2  || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'find . -newer $ptr_path_2' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    #? ----- END _drNTf body -----

    cd $PPWD
    return 0

}
