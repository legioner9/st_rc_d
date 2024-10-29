#!/bin/bash

_d4d() {

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

    echo -e "${CYAN}--- $FNN() $* in file://${sh_file}---${NORMAL}" #started functions

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

    #? ----- START _d4d body_prepeare -----

    local hint="hint->from insert dir \$1 for sdir: [{sub_dir_name} (\$2 pref_sdir) recurce recive dir \$3 replace sdir: [\$2{sub_dir_name}] ]"
    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: from insert dir \$1 for sdir: [{sub_dir_name} (\$2 pref_sdir) recurce recive dir \$3 replace sdir: [\$2{sub_dir_name}] ]
TAGS: 
\$1 inset dir
\$2 pref recive sdirdir
\$3 recive dir

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
    ${FNN} insert_dir @ recive_dir
"
        return 0
    fi

    #* check _isn_from
    # hint="\$1: \$2: "
    if _isn_from ${NARGS} 3 3 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '3' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #* path -> u@path
    #[[ptr_path]]
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    # [[ "${arg_arr[*]}" == *$arg* ]]
    local ptr_path_1="${ARGS[0]}"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    [ -d ${ptr_path_1} ] || {
        _st_exit "in fs= file://${file_main} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$2) : 'file://${ptr_path_1}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
        return 1
    }

    local ptr_path_3="${ARGS[2]}"
    ptr_path_3="$(_abs_path "${PPWD}" "ptr_path_3")"

    [ -d ${ptr_path_3} ] || {
        _st_exit "in fs= file://${file_main} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$3) : 'file://${ptr_path_3}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
        return 1
    }

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
    # [ $di -eq 1 ] && echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #* rename args
    #* check cntl
    #* inname cntl

    #? ----- START _d4d body_flow -----
    local insert_dir=${ptr_path_1}
    local pref_sdir="${ARGS[1]}"
    local recive_dir=${ptr_path_3}

    # local flag_not_change=0

    _d4d_insert() {
        local FNN=${FUNCNAME[0]}
        echo -e "${CYAN}--- $FNN() $* in file://${sh_file}---${NORMAL}"

        # subdir -> sdir
        # $1 insert_dir
        # $2 pref_sdir
        # $3 recive_dir

        local flag_not_change=0

        local recive_sdir=
        local recive_sdir_name=
        local prefix_sdir=
        local recive_sdir_base=

        local insert_sdir=
        local insert_sdir_name=
        local tmp_sdir=

        for recive_sdir in $(_ddr2e "$3"); do
            recive_sdir_name=$(_prs_f -ne "${recive_sdir}")
            recive_sdir_name_real=${recive_sdir_name:1}
            recive_sdir_base=$(_prs_f -d "${recive_sdir}")
            recive_sdir_real=${recive_sdir_base}/${recive_sdir_name_real}
            prefix_sdir=${recive_sdir_name:0:1}

            if [ "${prefix_sdir}" == "$2" ]; then

# 3. находим в dst_dir subdir префиксом @ и именем `string_name` - 
#       директоия только с _0 , используется только ее имя и путь к ней
#    - парсим `string_name` которая должна представлять следующую по составу: `src_name@dst_name`
#      - отбрасываем первый @ символ 
#      - `str_src_dst=src_name@dst_name ; str_src_dst_arr=(${str_src_dst//@/ })`
#        -  `src_name=${str_src_dst_arr[0]}`
#        -  `dst_name=${str_src_dst_arr[1]}`
#    - ищем в `dst_dir` `dst_name`

                # echo -e "${GREEN}\$recive_sdir_name_real = '$recive_sdir_name_real'${NORMAL}" #print variable

                for insert_sdir_name in $(_dd2e "$1"); do
                    insert_sdir="$1"/${insert_sdir_name}
                    # echo -e "${GREEN}\$insert_sdir_name = '$insert_sdir_name'${NORMAL}" #print variable
                    if [ "${insert_sdir_name}" == "${recive_sdir_name_real}" ]; then
                        flag_not_change=1
                        echo -e "${GREEN}\$insert_sdir = '$insert_sdir'${NORMAL}"           #print variable
                        echo -e "${GREEN}\$recive_sdir_real = '$recive_sdir_real'${NORMAL}" #print variable
                        echo -e "${GREEN}\$recive_sdir = '$recive_sdir'${NORMAL}"           #print variable
                        tmp_sdir=$(_prs_f -d ${recive_sdir})/_$(_prs_f -ne ${recive_sdir})
                        echo -e "${GREEN}\$tmp_sdir = '$tmp_sdir'${NORMAL}" #print variable

                        rm -r "${recive_sdir}"
                        mkdir "${tmp_sdir}"
                        touch "${tmp_sdir}"/_0

                        mkdir ${recive_sdir_real}

                        cp -r ${insert_sdir}/. ${recive_sdir_real}

                    fi

                done

            fi

        done

        local recive_sub_dir_arr=()

        if [ ${flag_not_change} -eq 0 ]; then

            for recive_sdir in $(_ddr2e "$3"); do
                recive_sdir_name=$(_prs_f -ne "${recive_sdir}")
                prefix_sdir=${recive_sdir_name:0:1}

                if [ ${prefix_sdir} == $2 ]; then
                    recive_sub_dir_arr+=("${recive_sdir}")
                fi

            done

            if [ -n "${recive_sub_dir_arr[0]}" ]; then
                _st_info "recive_dir: file://${recive_dir} contane recive_sub_dir"
                _parr3e recive_sub_dir_arr
            fi
        fi

        if [ ${flag_not_change} -eq 1 ]; then
            _d4d_insert "$1" "$2" "$3"
        fi
        return 0
    }

    _d4d_insert ${insert_dir} ${pref_sdir} ${recive_dir} || {
        _st_exit "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_d4d_insert ${insert_dir} ${pref_sdir} ${recive_dir}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
        return 1
    }

    #* {{fn_sh_body}}

    #? ----- END _d4d body -----

    cd $PPWD
    return 0

}
