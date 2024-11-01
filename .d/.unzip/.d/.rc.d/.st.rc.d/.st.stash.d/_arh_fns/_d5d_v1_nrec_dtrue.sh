#!/bin/bash

_d5d() {

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

    #? ----- START _d5d body_prepeare -----

    local hint="hint->\$1 ins_dr \$2 pfx_dr \$3 pfx_fl \$4 rcv_dr"
    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: \$1 ins_dr \$2 pfx_dr \$3 pfx_fl \$4 rcv_dr [see .hie]
TAGS: 
\$1 ins_dr
\$2 pfx_dr 
\$3 pfx_fl
\$4 rcv_dr
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
    if _isn_from ${NARGS} 4 4 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '4' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #* path -> u@path
    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    local ptr_path_4="$4"
    ptr_path_4="$(_abs_path "${PPWD}" "ptr_path_4")"

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
    echo -e "${CYAN}--- $FNN() $* in file://${sh_file} ---${NORMAL}" #started functions

    #* rename args
    local ins_dr=${ptr_path_1}
    local prx_dr=$2
    local prx_fl=$3
    local rcv_dr=${ptr_path_4}
    #* check cntl
    #* inname cntl
    _d5d_before_return() {
        :
    }

    #? ----- START _d5d body_flow -----

    [ -d "${ins_dr}" ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$) : 'file://${ins_dr}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        return 1
    }

    [ -d "${rcv_dr}" ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$) : 'file://${rcv_dr}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        return 1
    }

    #! Делаем копию `cp -r [destination_dir] _[destination_dir]` в оригинал вносим изменения - копия для истории изменений - скрываем ее под _
    #! Далее для краткости `_[destination_dir]` == `rcv_dr`

    local _rcv_dr=
    _rcv_dr=$(_prs_f -d ${rcv_dr})/_$(_prs_f -ne ${rcv_dr})
    echo -e "${GREEN}\$_rcv_dr = '$_rcv_dr'${NORMAL}" #print variable

    if [ -d "${_rcv_dr}" ]; then
        rm -r "${_rcv_dr}"
    fi
    mkdir "${_rcv_dr}"
    echo -e "${HLIGHT}--- cp -r ${rcv_dr}/. ${_rcv_dr} ---${NORMAL}" #start files
    # read -p 1
    cp -r "${rcv_dr}"/. "${_rcv_dr}"
    
    local pth_et=
    local prx_et=
    local str_nms=
    local str_nms_arr=()

    local free_rcv_link_arr=()

    local ins_nm=
    local rcv_nm=
    local pth_ins_nm=

    #! ищем `rcv_nm` в `rcv_dr`
    for pth_et in $(_dr2e "${rcv_dr}"); do
        #! _prs_f -ne имя с расширением
        et_nm=$(_prs_f -ne "${pth_et}")
        prx_et="${et_nm:0:1}"

        #! ищем link_sd с префиксом prx_dr
        if [ -d "${pth_et}" ] && [ "${prx_et}" == "${prx_dr}" ]; then
            echo -e "${GREEN}\${pth_et} = '${pth_et}'${NORMAL}" #print variable

            #! есть изменения
            flag_not_change=1

            #! делаем копию `mv rcv_dr/rcv_pth/{prx_et}str_nms rcv_dr/rcv_pth/_{prx_et}str_nms` - уберем из видимости STL _{prx_et}str_nms - префикс _ для исключения из иттератора _dd2e и сохранения истории изменений
            _pth_et=$(_prs_f -d ${pth_et})/_$(_prs_f -ne ${pth_et})
            if [ -d "${_pth_et}" ]; then
                rm -r "${_pth_et}"
            fi
            mkdir "${_pth_et}"
            cp -r "${pth_et}"/. "${_pth_et}"

            #! base_rcv_nm basename for rcv_nm
            base_rcv_nm=$(_prs_f -d ${pth_et})

            #! Парсим `str_nms` которая должна быть следующей по составу: `ins_nm{prx_et}rcv_nm` (e.c. n1@n2, n3&n4)
            str_nms=${et_nm:1}
            str_nms_arr=(${str_nms//${prx_et}/ })

            #! ins_nm имя директории с содержимым - rcv_nm имя результирующей директории

            ins_nm=${str_nms_arr[0]}
            rcv_nm=${str_nms_arr[1]}

            # echo -e "${GREEN}\$ins_nm = '$ins_nm'${NORMAL}" #print variable
            # echo -e "${GREEN}\$rcv_nm = '$rcv_nm'${NORMAL}" #print variable

            #! pth_rcv_nm полный путь с именем к результирующей директории
            pth_rcv_nm=${base_rcv_nm}/${rcv_nm}

            # #! путь к директории с содержимым pth_ins_nm найдем простым перебором в корне ins_dr
            # for item_ins_nm in $(_dd2e "${ins_dr}"); do
            #     if [ "${item_ins_nm}" == "${ins_nm}" ]; then
            #         pth_ins_nm=${ins_dr}/${ins_nm}
            #     fi
            # done

            pth_ins_nm=${ins_dr}/${ins_nm}

            #! проверим существует ли директория для вставки - она в корне ins_dr
            echo -e "${HLIGHT}--- if [ -d file://${pth_ins_nm}] ---${NORMAL}" #start files

            if [ -d ${pth_ins_nm} ]; then

                #! копируем pth_ins_nm -> pth_rcv_nm
                if [ -d "${pth_rcv_nm}" ]; then
                    rm -r "${pth_rcv_nm}"
                fi
                mkdir "${pth_rcv_nm}"
                echo -e "${HLIGHT}--- cp -r file://${pth_ins_nm}/. file://${pth_rcv_nm} ---${NORMAL}" #start files
                # read -p 1
                cp -r "${pth_ins_nm}"/. "${pth_rcv_nm}"
                #! после копирования удаляем link
                echo -e "${HLIGHT}--- rm -r file://${pth_et} ---${NORMAL}" #start files
                rm -r "${pth_et}"
            fi

        fi

        #! ищем link_fl с префиксом prx_fl
        if [ -f "${pth_et}" ] && [ "${prx_et}" == "${prx_fl}" ]; then
            echo -e "${GREEN}\${pth_et} = '${pth_et}'${NORMAL}" #print variable
        fi

    done

    # echo -e "${HLIGHT}--- _d5d_recurce ${ins_dr} ${prx_dr} ${prx_fl} ${rcv_dr} ---${NORMAL}" #start files
    # _d5d_recurce "${ins_dr}" "${prx_dr}" "${prx_fl}" "${rcv_dr}"

    #* {{fn_sh_body}}

    #? ----- END _d5d body -----

    cd $PPWD
    return 0

}
