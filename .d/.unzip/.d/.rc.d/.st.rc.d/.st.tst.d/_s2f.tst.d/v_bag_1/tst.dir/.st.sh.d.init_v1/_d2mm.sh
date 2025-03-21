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
MAIN: ${FNN} :: menu \$1: dir with file with lst \$2: ptr result \$3 0 or num menu files from dir \$4 0 or num menu string from file choiced from prev menu
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
        _edit $sh_file}
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

    hint="\$1: dir with file with lst \$2: ptr result \$3 0 or num menu files from dir \$4 0 or num menu string from file choiced from prev menu"
    if _isn_from ${NARGS} 4 4 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '4' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    if _isn_od $3; then
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : NOT_NUMBER : '$3' : ${hint} : return 1"
        return 1
    fi

    if _isn_od $4; then
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : NOT_NUMBER : '$4' : ${hint} : return 1"
        return 1
    fi

    #! ptr_path_1
    local ptr_path_1="$1"
    if ! _abs_path "${PPWD}" ptr_path_1 >/dev/null; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_abs_path ${PPWD} ptr_path_1' : ${hint} : return 1" >&2
        cd $PPWD
        return 1
    fi
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"
    #[[ptr_path_s]]

    echo -e "${GREEN}\$ptr_path_1 = file://$ptr_path_1${NORMAL}" #print variable

    local result_nr2mm=
    local arr=()
    local res=()

    arr=($(_d2e $ptr_path_1))

    local item

    for item in $(_d2e $ptr_path_1); do
        res+=("$ptr_path_1/$item")
    done

    _parr3e arr
    _parr3e res

    #* --- START nr2mm_before_info_s ---
    echo -e "
${RED}--- _nr2mm message :${BLUE} 
GENERATOR_INFO :
name   from :: file name \$(_d2e file://${ptr_path_1})
result from :: full path \$(_d2e file://${ptr_path_1})
${RED}---${NORMAL}"
    #* --- END nr2mm_before_info_s ---
    #[[nr2mm_before_info_s]]

    _nr2mm arr res result_nr2mm "$3"
    echo -e "${GREEN}\$result_nr2mm = $result_nr2mm${NORMAL}" #print variable

    local result_f2mm=

    _f2mm $result_nr2mm result_f2mm "$4"

    echo -e "${GREEN}\$result_f2mm = $result_f2mm${NORMAL}" #print variable

    eval "$ARGS1=$result_f2mm"

    cd $PPWD
    return 0

}
