#!/bin/bash

_ungpz_to() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local item=

    #* local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d
    local data_dir_lst=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d/.lst
    local data_dir_prc=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d/.prc
    local data_dir_tml=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d/.tml

    local comm_dir_tst=${HOME}/.d/.rpn.ax.d

    local hie_file=${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${FNN}.hie

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
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
        _edit ${data_dir}
        cd $PPWD
        return 0
    fi

    #? ----- START _ungpz_to body_prepeare -----

    local hint="hint-> gpg -d+zip : to \$1 dir from \$2 file.gpz "
    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: gpg -d+zip : to \$1 dir from \$2 file.gpz 
TAGS: 
\$1 
[, \$2]
[, \$N last arg DEBAG CNTL
    if '_i' debag action, use: [ \$di -eq 1 ] && {debag action} ]

UCNT:
    _?
CNTL: 
    _e      : _edit body            : _edit file://${sh_file}
    _t      : _edit tst_dir         : _edit file://${tst_dir}
    _d      : exec tst_dir_fn       : . file://${tst_dir_file}
    _f1     : exec flow_dir_file_1  : . file://${flow_dir_file_1}
    _f1_e   : _edit flow_dir_file_1 : _edit file://${flow_dir_file_1}
    _hie_m  : more hie_file         : more file://${hie_file} 
    _hie_e  : _edit hie_file        : _edit file://${hie_file} 
    _data_e : _edit data_dir        : _edit file://${data_dir} 

RETU: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERNO: ( if ... return 0 | if ... return 1 )
EXAM: 
    ${FNN}
"
        return 0
    fi

    #* check _isn_from
    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     cd $PPWD
    #     return 1
    # fi

    #* path -> u@path
    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    local ptr_path_2="$2"
    ptr_path_2="$(_abs_path "${PPWD}" "ptr_path_2")"

    # [[ "${arg_arr[*]}" == *$arg* ]]

    #* DEBAG CNTL
    # local di=
    # if [ -n "$N" ]; then
    #     if [ "$N" == "_i" ]; then
    #         di=1
    #     else
    #         di=0
    #     fi
    # else
    #     di=0
    # fi
    #* [ $di -eq 1 ] && echo "info"

    #* greeting
    echo -e "${CYAN}--- $FNN() $* in file://${sh_file}---${NORMAL}" #started functions

    #* rename args
    local dst_dir=${ptr_path_1}
    local gpz_file=${ptr_path_2}

    [ -d "${dst_dir}" ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$1) : 'file://${dst_dir}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
        return 1
    }

    [ -f "${gpz_file}" ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_FILE (\$2) : 'file://${gpz_file}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
        return 1
    }

    #* check cntl
    #* inname cntl
    _ungpz_to_before_reurn() {
        rm -rf ${zip_tmp_dir}
    }

    #? ----- START _ungpz_to body_flow -----

    zip_tmp_dir=$(_prs_f -d ${gpz_file})/.gpz

    # echo -e "${GREEN}\$zip_tmp_dir = 'file://$zip_tmp_dir'${NORMAL}" #print variable

    if ! [ -d "${zip_tmp_dir}" ]; then
        mkdir "${zip_tmp_dir}"
    fi

    zip_tmp_file=${zip_tmp_dir}/$(_prs_f -n ${gpz_file}).zip

    _st_info "decode gpg"
    gpg -d -o ${zip_tmp_file} ${gpz_file} || {
        _st_exit "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'gpg -d -o ${zip_tmp_file} ${gpz_file}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        # rm -rf ${zip_tmp_dir}
        _ungpz_to_before_reurn
        return 1
    }

    _unzip_to ${dst_dir} ${zip_tmp_file} || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_unzip_to ${dst_dir} ${zip_tmp_file}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        # rm -rf ${zip_tmp_dir}
        _ungpz_to_before_reurn
        return 1
    }

    rm -rf ${zip_tmp_dir}

    #* {{fn_sh_body}}

    #? ----- END _ungpz_to body -----

    cd $PPWD
    _ungpz_to_before_reurn
    return 0

}
