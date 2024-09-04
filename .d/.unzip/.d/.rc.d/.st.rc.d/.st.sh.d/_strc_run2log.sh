#!/bin/bash

_strc_run2log() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

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
MAIN: ${FNN} :: . '${HOME}/.d/.rc.d/.st.rc.d/.st.rc' ?> '${HOME}/.d/.rc.d/.st.rc.d/.st.log.d/run_st_rc.log'
TAGS:
NB!!: .log12 '&>' .log1 '>' .log2 '2>'
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

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    . ${HOME}/.d/.rc.d/.st.rc.d/.st.rc &>${HOME}/.d/.rc.d/.st.rc.d/.st.log.d/_strc_run2log/run_st_rc.log12
    . ${HOME}/.d/.rc.d/.st.rc.d/.st.rc >${HOME}/.d/.rc.d/.st.rc.d/.st.log.d/_strc_run2log/run_st_rc.log1 2>/dev/null
    . ${HOME}/.d/.rc.d/.st.rc.d/.st.rc 2>${HOME}/.d/.rc.d/.st.rc.d/.st.log.d/_strc_run2log/run_st_rc.log2 >/dev/null

    cd $PPWD
    return 0

}
