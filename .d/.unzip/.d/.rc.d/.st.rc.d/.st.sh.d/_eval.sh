#!/bin/bash

_eval() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    #* local fn_data_dir=${HOME}.d/.rc.d/.st.rc.d/.st.d

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
MAIN: ${FNN} :: eval string with delim \\\\n from stdin or < file or \$1 file or << here doc or <<< here string
TAGS:
\$1 
[, \$2]
CNTL: 
    _e : _edit body      : _edit ${sh_file}
    _t : _edit tst_dir   : _edit ${tst_dir}
    _d : exec tst_dir_fn : . ${tst_dir_file}
EXAM: 
    cat f.eval
        ls
        ${HOME}
    ${FNN} f.eval
    ${FNN} < f.eval
    cat f.eval | ${FNN}
    v_str=\"ls
\${HOME}
    \"
    echo \$v_str | ${FNN}
    ${FNN} <<< \$v_str
    ${FNN} <<EOF
    ls
    ${HOME}
EOF
    see also file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_eval.tst.d/_eval.tst.sh.deb1
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

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d
    local err_flag=0

    # if [[ -n "$1" ]]; then

    while IFS=$'\n' read -r line; do
        echo -e "${HLIGHT}--- exec: $line ---${NORMAL}" #start files
        if ! eval "$line"; then
            err_flag=1
        fi
    done <"${1:-/dev/stdin}"

    # else

    #     while IFS=$'\n' read -r line; do
    #         echo -e "${HLIGHT}--- exec: $line ---${NORMAL}" #start files
    #         if ! eval "$line"; then
    #             err_flag=1
    #         fi
    #     done

    # fi
    local hint=

    if [[ ${err_flag} -eq 1 ]]; then
        _st_exit "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '${FNN}() $@' : ${hint} : return 1"
        return 1
    fi

    cd $PPWD
    return 0

}
