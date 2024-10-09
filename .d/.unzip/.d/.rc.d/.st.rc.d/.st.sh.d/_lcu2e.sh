#!/bin/bash

_lcu2e() {

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
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    local datd_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d

    local hie_file=${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${FNN}.hie

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: color stdout \$1 upath to __.lcu if @ search __.lcu in PPWD
TAGS: 
\$1 u@path to __.lcu if @ search __.lcu in PPWD
[, \$2
    _s - without color (WC)
    _path - WC only PATH - without 'PATH: '
    _rndx - WC only RNDX - without 'RNDX: '
    _main - WC only MAIN - without 'MAIN: '
    _tags - (like arr) WC only TAGS - without 'TAGS: ' and '@'
    ]
CNTL: 
    _e      : _edit body            : _edit file://${sh_file}
    _t      : _edit tst_dir         : _edit file://${tst_dir}
    _d      : exec tst_dir_fn       : . file://${tst_dir_file}
    _f1     : exec flow_dir_file_1  : . file://${flow_dir_file_1}
    _f1_e   : _edit flow_dir_file_1 : _edit file://${flow_dir_file_1}
    _hie_m  : more hie_file         : more file://${hie_file} 
    _hie_e  : _edit hie_file        : _edit file://${hie_file} 
    _data_e : _edit data_dir        : _edit file://${datd_dir} 

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
        _edit ${datd_dir}
        cd $PPWD
        return 0
    fi

    #? ----- START _lcu2e body -----

    hint="\$1 u@path to __.lcu"
    if _isn_from ${NARGS} 1 2 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1|2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
        cd $PPWD
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    [ -d ${ptr_path_1} ] && {
        ptr_path_1=${ptr_path_1}/__.lcu
    }

    [ -f ${ptr_path_1} ] || {
        hint="\$1 u@path to __.lcu - that full path"
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_FILE (\${ptr_path_1}) : 'file://${ptr_path_1}' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    local rndx
    rndx=$(cat ${ptr_path_1} | grep "RNDX: ")
    local tags
    tags=$(cat ${ptr_path_1} | grep "TAGS: ")
    local main
    main=$(cat ${ptr_path_1} | grep "MAIN: ")

    if [ -n "${ARGS1}" ]; then

        [ ${ARGS1} == "_s" ] && {
            echo -e "
PATH: ${ptr_path_1} 
${rndx} 
${main} 
${tags}    
"
            return 0
        }

        [ "${ARGS1}" == "_path" ] && {
            echo "${ptr_path_1}"
            return 0
        }
        [ "${ARGS1}" == "_tags" ] && {
            tags=${tags//@/}
            echo "${tags:6}"
            return 0
        }
        [ "${ARGS1}" == "_rndx" ] && {
            echo "${rndx:6}"
            return 0
        }
        [ "${ARGS1}" == "_main" ] && {
            echo "${main:6}"
            return 0
        }

        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : NOT_IN_CONDITION : '\$2=(_s|_path|_rndx|_main|_tags)' : : return 1"
        cd $PPWD
        return 1
    fi

    # echo -e "${GREEN}\$ptr_path_1 = $ptr_path_1${NORMAL}" #print variable

    # cat ${ptr_path_1}

    local rndx
    rndx=$(cat ${ptr_path_1} | grep "RNDX: ")
    local tags
    tags=$(cat ${ptr_path_1} | grep "TAGS: ")
    local main
    main=$(cat ${ptr_path_1} | grep "MAIN: ")

    echo -e "
${GCZ0CM1_4}PATH: file://${ptr_path_1} ${NORMAL}
${GCZ0CM1_5}${rndx} ${NORMAL}
${GCZ0CM1_6}${main} ${NORMAL}
${GCZ0CM1_1}${tags} ${NORMAL}    
"

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    #? ----- END _lcu2e body -----

    cd $PPWD
    return 0

}
