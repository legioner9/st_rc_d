#!/bin/bash

_d2ae() {

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

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: like ls (NOT uprev) \$1 (@|path) @ if path='' [, \$2 .ext]
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

    # if ! [[ -d "$1" ]]; then
    #     echo "in .d/.rc.d/.st.rc.d/.st.sh.d/_d2ae.sh _d2ae() : NOT_DIR : '\$1= file://$1 ', hint : '$3' return 1" >&2
    #     return 1
    # fi

    local item=

    if [[ "$1" == "@" ]]; then
        # ls

        for item in $(ls); do
            if [ -z "$2" ]; then
                if { [ -d "$item" ] || [ -f "$item" ]; }; then
                    echo "$item"
                fi
            else
                local _d2ae_ext
                _d2ae_ext=$(_prs_f -e "$item")
                if { [ -d "$item" ] || [ -f "$item" ]; } && [ "${_d2ae_ext}" == "$2" ]; then
                    echo "$item"
                fi
            fi
        done

    else
        ls $1 >/dev/null || {
            _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'ls $1 >/dev/null' : ${hint} : return 1"
            return 1
        }

        for item in $(ls "$1"); do
            if [ -z "$2" ]; then
                if { [ -d "$1/$item" ] || [ -f "$1/$item" ]; }; then
                    echo "$item"
                fi
            else
                local _d2ae_ext
                _d2ae_ext=$(_prs_f -e "$item")
                if { [ -d "$1/$item" ] || [ -f "$1/$item" ]; } && [ "${_d2ae_ext}" == "$2" ]; then
                    echo "$item"
                fi
            fi
        done

    fi

    cd $PPWD
    return 0

}
