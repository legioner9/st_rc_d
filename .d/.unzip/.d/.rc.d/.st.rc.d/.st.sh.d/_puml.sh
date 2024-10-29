#!/bin/bash

_puml() {

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

    #? ----- START _puml body_prepeare -----

    local hint="hint->"
    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: puml2png cr file_path.png from \$1 file_path.puml
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
    hint="puml2png cr file_path.png from \$1 file_path"
    if _isn_from ${NARGS} 1 1 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #* path -> u@path
    #[[ptr_path]]
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

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
    # [ $di -eq 1 ] && echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #* rename args
    #* check cntl
    #* inname cntl

    #? ----- START _puml body_flow -----

    ptr_path=$1
    ptr_path=$(abs_path $PPWD "ptr_path") #ptr args

    [ -f ${ptr_path} ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_FILE (\$1) : 'file://${ptr_path}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        return 1
    }

    # name_png=$(prs_f -n ${ptr_path})
    # dir_png=$(prs_f -d ${ptr_path})
    path_png_d=${ptr_path}.png.d
    # java -jar ${REPO_PATH}/Repono/PlantUml/plant_jar/plantuml.jar ${ptr_path} >${path_png}
    # [ -d ${path_png_d} ] || {
    #     mkdir ${path_png_d}
    # }
    # java -jar ${REPO_PATH}/Repono/PlantUml.ax/plant_jar.ax/plantuml.jar ${ptr_path} -o ${path_png_d}
    java -jar ${REPO_PATH}/Repono/PlantUml.ax/plant_jar.ax/plantuml.jar ${ptr_path} -o ${path_png_d}

    #* {{fn_sh_body}}

    #? ----- END _puml body -----

    cd $PPWD
    return 0

}
