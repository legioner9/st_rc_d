#!/bin/bash

_st_exit() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: info>&2, pause, return 1 or ^C
TAGS:
\$1 
[, \$2]
CNTL: 
    _e : _edit body      : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_st_exit.sh
    _t : _edit tst_dir   : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d
    _d : exec tst_dir_fn : . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d/_st_exit.tst.sh
EXAM: 
    ${FNN}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_st_exit.sh
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d/_st_exit.tst.sh
        return 0
    fi

    echo -e "${RED}-------- _st_exit: ${ARGS[*]} --------${NORMAL}" >&2 #sistem info mesage
    echo -e "${RED}be return 1${NORMAL}" >&2
    echo -e "${RED}^C - exit, ENTER - return to process \nafter usually return 1 from parent thread${NORMAL}" >&2
    read

    cd $PPWD
    return 1

}
