#!/bin/bash

_gpz_to() {

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

    #? ----- START _gpz_to body_prepeare -----

    local hint="hint-> zip+gpg -c : \$1 file.gpz from \$2 node.fd (-f|-d)"
    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: zip+gpg : \$1 file.gpz from \$2 node.fd (-f|-d)
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
    if _isn_from ${NARGS} 2 2 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

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
    gpz_file=${ptr_path_1}
    if [ "$(_prs_f -e ${gpz_file})" == "gpz" ] || [ "$(_prs_f -e ${gpz_file})" == "GPZ" ]; then
        gpz_file=$(_prs_f -d ${gpz_file})/$(_prs_f -n ${gpz_file})
    fi
    src_node=${ptr_path_2}

    #* check cntl
    #* inname cntl

    #? ----- START _gpz_to body_flow -----

    if ! { [ -f "${src_node}" ] || [ -d "${src_node}" ]; }; then

        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : IN_CONDITION (\$2) : ' ! { [ -f ${src_node} ] || [ -d ${src_node} ]; } ' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        return 1

    fi

    zip_tmp_dir=$(_prs_f -d ${src_node})/.zip
    zip_tmp_file=${zip_tmp_dir}/$(_prs_f -ne ${gpz_file})

    # echo -e "${GREEN}\$zip_tmp_file = '$zip_tmp_file'${NORMAL}" #print variable

    if ! [ -d "${zip_tmp_dir}" ]; then
        mkdir ${zip_tmp_dir}
    fi

    _zip_to ${zip_tmp_file} ${src_node} || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_zip_to ${zip_tmp_file} ${src_node}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        # rm -rf ${zip_tmp_dir}
        return 1
    }

    _st_info "incode gpg"
    gpg -c -o ${gpz_file}.gpz ${zip_tmp_file}.zip || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'gpg -c -o ${gpz_file}.gpz ${zip_tmp_file}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        rm -rf ${zip_tmp_dir}
        return 1
    }

    rm -rf ${zip_tmp_dir}

    #* {{fn_sh_body}}

    #? ----- END _gpz_to body -----

    cd $PPWD
    return 0

}
