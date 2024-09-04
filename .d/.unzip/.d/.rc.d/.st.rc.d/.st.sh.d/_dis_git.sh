#!/bin/bash

_dis_git() {

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

    echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: if diss with git HEAD in dir or pwd return 0 else 1 
TAGS: @git @diss
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

    #! ptr_path
    local ptr_path="$1"
    ptr_path="$(_abs_path "${PPWD}" "ptr_path")"
    # [[ptr_path]]
    echo -e "${GREEN}\$ptr_path = $ptr_path${NORMAL}" #print variable

    local check_dir=

    if [[ -d $ptr_path ]]; then
        check_dir=$ptr_path

    elif [[ -e $ptr_path ]]; then
        if [[ -d $(basename $ptr_path) ]]; then
            check_dir=$(basename $ptr_path)
        else
            _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://$ptr_path' && NOT_DIR : 'file://$check_dir' : ${hint} : return 1"
            return
        fi
    else
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR && NOT_FILE : 'file://$ptr_path' : ${hint} : return 1"
        return 1
    fi

    cd ${check_dir} || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'cd ${check_dir}' : ${hint} : return 1"
        return 1
    }

    if ! git status -s >/dev/null; then
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : in file://${check_dir} 'git status -s' : ${hint} : return 1"
        return 1
    fi

    #* ${HOME}/.d/.rc.d/.st.rc.d/.st.d
    #* ${HOME}/REPOBARE/_repo/st_rc_d/.d/.st.rc.d will not be define ${ST_RC_D_PATH}

    local git_dir=$(git rev-parse --show-toplevel)

    echo -e "${GREEN}\$git_dir = $git_dir${NORMAL}" #print variable

    cd ${git_dir} || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'cd ${git_dir}' : ${hint} : return 1"
        return 1
    }

    local tail_path=${ptr_path/${git_dir}/}

    local tail_path_str=${tail_path//\//}

    local flag_in_root_git=0

    if [[ -z "${tail_path_str}" ]]; then
        flag_in_root_git=1
    fi

    echo -e "${GREEN}\$tail_path_str = $tail_path_str${NORMAL}" #print variable

    local arr_status=($(git status -s | awk '{print $2}'))

    if [[ -z "${arr_status[0]}" ]]; then
        echo -e "${BLUE}--- git status EMPTY return 1 ---${NORMAL}" #sistem info mesage
        return 1
    fi

    if [[ -n "${arr_status[0]}" ]] && [[ ${flag_in_root_git} -eq 1 ]]; then
        echo -e "${BLUE}--- git status NOT_EMPTY in root git dir return 0 ---${NORMAL}" #sistem info mesage
        return 0
    fi

    _parr3e arr_status

    item=
    local item_str=
    local flag_diss=0

    for item in ${arr_status[@]}; do

        item_str=${item//\//}
        if _is_sINs ${item_str} ${tail_path_str} >/dev/null || _is_sINs ${tail_path_str} ${item_str} >/dev/null; then
            echo -e "${CYAN}--- _is_sINs ${item_str} ${tail_path_str} => flag_diss=1 ---${NORMAL}" #sistem info mesage
            flag_diss=1
        fi

    done

    if [[ ${flag_diss} == 1 ]]; then
        echo -e "${CYAN}--- return 0 ---${NORMAL}" #sistem info mesage
        cd $PPWD
        return 0
    else
        echo -e "${CYAN}--- return 1 ---${NORMAL}" #sistem info mesage
        cd $PPWD
        return 1
    fi

    cd $PPWD
    return 0

}
