#!/bin/bash

_lcu_iss_mm_add_tag2f() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local hint="hint->\$1 flcu \$2 dir with env_lcu \$3 num menu (num file.lst - lst dlcu)"
    local item=

    #* local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d
    local user_datd_dir=${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/${FNN}.d

    local hie_file=${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${FNN}.hie

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: \$1 flcu \$2 dir with env_lcu \$3 num menu (num file.lst - lst dlcu)
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
    _user_datd_dir_e : _edit user_datd_dir : _edit file://${user_datd_dir} 

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
        _edit ${data_dir}
        cd $PPWD
        return 0
    fi

    if [[ "_user_datd_dir_e" == "$1" ]]; then
        _edit ${user_datd_dir}
        cd $PPWD
        return 0
    fi

    #? ----- START _lcu_iss_mm_add_tag2f body -----

    if _isn_from ${NARGS} 3 3 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '3' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    [ -f $ptr_path_1 ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_FILE (\$1) : 'file://$ptr_path_1' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    local ptr_path_2="$2"
    ptr_path_2="$(_abs_path "${PPWD}" "ptr_path_2")"

    [ -d $ptr_path_2 ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$2) : 'file://$ptr_path_2' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    local num_menu=$3

    _isn_od $num_menu && {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_NUMBER (\$3) : '$num_menu' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    local file_lcu=${ptr_path_1}
    local env_dir=${ptr_path_2}

    local env_tag_arr=($(_lculdr_tags2ue ${env_dir} ${num_menu}))
    local file_tag_arr=($(_lcu2e ${file_lcu} _tags))
    local tag=
    local uniq_tag=()

    for tag in ${env_tag_arr[@]}; do
        if ! [[ "${file_tag_arr[*]}" == *$tag* ]]; then
            uniq_tag+=("$tag")
        fi
    done

    local sorted_uniq_tag=()

    IFS=$'\n' sorted_uniq_tag=($(sort <<<"${uniq_tag[*]}"))
    unset IFS

    # echo -e "${sorted_uniq_tag[*]}" #print variable

    echo -e "${HLIGHT}--- _nr2mm sorted_uniq_tag sorted_uniq_tag res_mm_ 0 ---${NORMAL}" #start files
    _nr2mm sorted_uniq_tag sorted_uniq_tag res_mm_ 0 || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_nr2mm sorted_uniq_tag sorted_uniq_tag res_mm_ 0' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    echo -e "${GREEN}\$res_mm_ = $res_mm_${NORMAL}" #print variable

    if _is_yes "DO?: add '$res_mm_' tag to file://${file_lcu} (_lcu_add_tag2f)"; then
        echo -e "${HLIGHT}--- _lcu_add_tag2f $res_mm_ ${file_lcu} ---${NORMAL}" #start files
        _lcu_add_tag2f $res_mm_ ${file_lcu} || {
            _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_lcu_add_tag2f $res_mm_ ${file_lcu}' : ${hint} : return 1"
            cd $PPWD
            return 1
        }
    else
        _st_info "NOT 'y' be continued _lcu_iss_mm_add_tag2f()"
    fi

    echo -e "${HLIGHT}--- _lcu2e ${file_lcu} ---${NORMAL}" #start files
    _lcu2e ${file_lcu}

    echo -e "${HLIGHT}--- _lcu2e ${file_lcu} _tags ---${NORMAL}" #start files
    _lcu2e ${file_lcu} _tags

    if _is_yes "DO?: add new tag to file://${file_lcu} (_lcu_iss_mm_add_tag2f) "; then
        _lcu_iss_mm_add_tag2f ${ARGS0} ${ARGS1} ${ARGS2} || {
            _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_lcu_iss_mm_add_tag2f ${ARGS0} ${ARGS1} ${ARGS2}' : ${hint} : return 1"
            cd $PPWD
            return 1
        }
    else
        _st_info "NOT 'y' be continued _lcu_iss_mm_add_tag2f()"
    fi

    #? ----- END _lcu_iss_mm_add_tag2f body -----
    cd $PPWD
    return 0

}
