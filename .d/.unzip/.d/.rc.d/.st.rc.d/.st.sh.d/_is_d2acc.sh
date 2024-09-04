#!/bin/bash

_is_d2acc() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local hint="IS for access (w , x) for sys_user for \$1 dir"
    local item=

    #* local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: IS for access (w , x) for sys_user for \$1 dir  
TAGS: 
\$1 IS for access (w , x) for sys_user for \$1 dir
[, \$2]
CNTL: 
    _e  : _edit body      : _edit ${sh_file}
    _t  : _edit tst_dir   : _edit ${tst_dir}
    _d  : exec tst_dir_fn : . ${tst_dir_file}
    _f1 : exec tst_dir_fn : . ${flow_dir_file_1}
RETU: 
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

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    [ -d ${ptr_path_1} ] || {
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${ptr_path_1}' : ${hint} : return 1"
        return 1
    }

    local INFO=($(stat -L -c "%a %G %U" "$ptr_path_1"))
    local PERM=${INFO[0]}
    local GROUP=${INFO[1]}
    local OWNER=${INFO[2]}

    local ACCESS=no

    if ((($PERM & 0002) != 0)); then
        # Everyone has write access
        ACCESS=yes
    elif ((($PERM & 0020) != 0)); then
        # Some group has write access.
        # Is user in that group?
        gs=($(groups $USER))
        for g in "${gs[@]}"; do
            if [[ $GROUP == $g ]]; then
                ACCESS=yes
                break
            fi
        done
    elif ((($PERM & 0200) != 0)); then
        # The owner has write access.
        # Does the user own the file?
        [[ $USER == $OWNER ]] && ACCESS=yes
    fi

    if [ "yes" != ${ACCESS} ]; then
        cd $PPWD
        return 1
    fi

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    cd $PPWD
    return 0

}
