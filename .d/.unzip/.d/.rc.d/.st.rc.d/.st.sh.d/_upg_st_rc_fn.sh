#!/bin/bash

_upg_st_rc_fn() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local hint="hint->upg flow \$2 (_gigx|_bcp_rnm) for \$1 fn_name STL"
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

    echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: upg (only .sh) flow \$2 (_gigx|_bcp_rnm) for \$1 fn_name STL
TAGS: 
\$1 fn_name STL
\$2 UCNT:
    _gigx  - создание [fn_name]X функции
    _bcp_rnm - бэкап [fn_name] и переименование [fn_name]X -> [fn_name]
    not use (restore from git) : _rcv_bcp - переименование [fn_name] -> [fn_name]X , восстановление [fn_name] из бэкапа , добавлние бэкапу префикса _date()

[, \$3 last arg DEBAG CNTL
    if '_i' debag action, use: [ \$di -eq 1 ] && {debag action} ]    
CNTL: 
    _e      : _edit body            : _edit file://${sh_file}
    _t      : _edit tst_dir         : _edit file://${tst_dir}
    _d      : exec tst_dir_fn       : . file://${tst_dir_file}
    _f1     : exec flow_dir_file_1  : . file://${flow_dir_file_1}
    _f1_e   : _edit flow_dir_file_1 : _edit file://${flow_dir_file_1}
    _hie_m  : more hie_file         : more file://${hie_file} 
    _hie_e  : _edit hie_file        : _edit file://${hie_file} 
    _data_e : _edit data_dir        : _edit file://${data_dir} 

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

    if [[ "_e" == "$1" ]]; then
        _edit ${sh_file}
        cd $PPWD
        return 0
    fi

    #? ----- START _upg_st_rc_fn body -----

    #* DEBAG CNTL
    local di=
    if [ -n "$3" ]; then
        if [ "$3" == "_i" ]; then
            di=1
        else
            di=0
        fi
    else
        di=0
    fi
    #* [ $di -eq 1 ] && echo "info"

    # hint="\$1: \$2: "
    if _isn_from ${NARGS} 2 3 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1 ' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #* rename args
    local fn_name="$1"
    [ $di -eq 1 ] && echo -e "${GREEN}\$fn_name = '$fn_name'${NORMAL}" #print variable

    local cntl_flow="$2"
    [ $di -eq 1 ] && echo -e "${GREEN}\$cntl_flow = '$cntl_flow'${NORMAL}" #print variable

    local bcp_rst_sh=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/.bcp_rst

    #* check cntl
    local allow_ucnt_arr=()

    allow_ucnt_arr=($(_f2e ${data_dir_lst}/allow_ucnt.lst))
    [ $di -eq 1 ] && _parr3e allow_ucnt_arr

    [[ "${allow_ucnt_arr[*]}" == *$cntl_flow* ]] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : NOT_IN_CONDITION (\$2) : '(_gigx|_bcp_rnm|_rcv_bcp)' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    #* inname cntl
    local num_flow=0

    [ "${cntl_flow}" == "_gigx" ] && {
        num_flow=1
    }

    [ "${cntl_flow}" == "_bcp_rnm" ] && {
        num_flow=2
    }

    # [ "${cntl_flow}" == "_rcv_bcp" ] && {
    #     num_flow=3
    # }

    #* MAIN

    [ -f ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${fn_name}.sh ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DEFINE (\$1) : function '${fn_name}' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    [ ${num_flow} -eq 1 ] && {

        [ -f ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${fn_name}X.sh ] && {
            _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : FILE (\$) : '${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${fn_name}X.sh' : ${hint} : return 1"
            _is_yes "remove ${fn_name}X ?" && {
                _rm_st_rc_fn "${fn_name}"X
                echo -e "${HLIGHT}--- bash ---${NORMAL}" #start files
                bash
            }
            cd $PPWD
            return 1
        }

        [ $di -eq 1 ] && echo -e "${HLIGHT}--- _gig_st_rc_fn ${fn_name}X ---${NORMAL}" #start files

        _gig_st_rc_fn "${fn_name}"X || {
            _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_gig_st_rc_fn "${fn_name}"X' : ${hint} : return 1"
            cd $PPWD
            return 1
        }

        #* cp data
        # rm -r ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${fn_name}X.d
        # cp -rf ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${fn_name}.d ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${fn_name}X.d
        rm -r ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${fn_name}X.d
        [ $di -eq 1 ] && echo -e "${HLIGHT}--- _sdd2d ${fn_name} ${fn_name}X ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${fn_name}.d ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d ---${NORMAL}" #start files
        _sdd2d ${fn_name} ${fn_name}X ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${fn_name}.d ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d

        #* cp hie
        # rm ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${fn_name}X.hie
        # cp ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${fn_name}.hie ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${fn_name}X.hie
        # _s2f ${fn_name} ${fn_name}X ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${fn_name}X.hie

        [ $di -eq 1 ] && echo -e "${HLIGHT}--- cd ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d ---${NORMAL}" #start files
        rm ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${fn_name}X.hie
        cd ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d
        [ $di -eq 1 ] && echo -e "${HLIGHT}--- _sf2f ${fn_name} ${fn_name}X ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${fn_name}.hie ---${NORMAL}" #start files
        _sf2f ${fn_name} ${fn_name}X ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${fn_name}.hie

        #* cp tst
        # rm -r ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${fn_name}X.tst.d
        # cp -rf ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${fn_name}.tst.d ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${fn_name}X.tst.d
        rm -r ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${fn_name}X.tst.d
        [ $di -eq 1 ] && echo -e "${HLIGHT}--- _sdd2d ${fn_name} ${fn_name}X ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${fn_name}.tst.d ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d ---${NORMAL}" #start files
        _sdd2d ${fn_name} ${fn_name}X ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${fn_name}.tst.d ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d
    }

    [ ${num_flow} -eq 2 ] && {

        _st_pause "Do you git push ${fn_name}? recovery ${fn_name}X.sh -> ${fn_name}X.sh?"

        [ -d ${bcp_rst_sh}/${fn_name}.d ] || {
            mkdir ${bcp_rst_sh}/${fn_name}.d
        }

        cp ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${fn_name}.sh ${bcp_rst_sh}/${fn_name}.d/${fn_name}.sh.$(_date)

        rm ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${fn_name}.sh
        [ $di -eq 1 ] && echo -e "${HLIGHT}--- cd ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d ---${NORMAL}" #start files
        cd ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d

        [ $di -eq 1 ] && echo -e "${HLIGHT}--- _sf2f ${fn_name} ${fn_name}X ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${fn_name}.hie ---${NORMAL}" #start files
        _sf2f ${fn_name}X ${fn_name} ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${fn_name}X.sh

        _rm_st_rc_fn ${fn_name}X
        echo -e "${HLIGHT}--- bash ---${NORMAL}" #start files
        bash
    }

    #[[ptr_path]]
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"]

    # [[ "${arg_arr[*]}" == *$arg* ]]

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    #? ----- END _upg_st_rc_fn body -----
    cd $PPWD
    return 0

}
