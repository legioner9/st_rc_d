#!/bin/bash

_nr2mm() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local fn_sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh

    local NARGS=$#

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: \$1: parr [n]ame mm, \$2: parr [r]es [mm], \$3: parr string result \$4 0 or num menu
TAGS:
\$1 
[, \$2]
CNTL: 
    _e : _edit body      : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_nr2mm.sh
    _t : _edit tst_dir   : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d
    _d : exec tst_dir_fn : . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh
EXAM: 
    ${FNN}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_nr2mm.sh
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh
        return 0
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_nr2mm.sh, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    if _isn_from ${NARGS} 4 4 "in ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    local num

    #! ------ START confict_name_arg ------
    local coflict_name_arr=("arr_name" "arr_res" "result")
    local item1=
    local item2=
    local i=
    local conflict_flag=0
    for item1 in ${coflict_name_arr[@]}; do
        i=0
        for item2 in ${ARGS[@]}; do
            if [[ ${item1} = ${item2} ]]; then
                hint="\$1: parr [n]ame mm, \$2: parr [r]es [mm], \$3: parr string result \$4 0 or num menu"
                _st_info "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_nr2mm.sh , line=${LINENO}, ${FNN}() : CONFLICT_NAME : ARGS${i} not be equal '${item1}' : ${hint} : continue"
                conflict_flag=1
            fi
            ((++i))
        done
    done
    if [[ ${conflict_flag} -eq 1 ]]; then
        echo -e "${GREEN}\${coflict_name_arr[@]} = ${coflict_name_arr[*]}${NORMAL}" #print variable
        _st_exit "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_nr2mm.sh , line=${LINENO}, ${FNN}() : CONFLICT_NAME : 'see stack' : ${hint} : return 1"
        return 1
    fi
    #! ------ END confict_name_arg ------
    #[[confict_name_arg]]

    local arr_name=()

    eval num=\$\{#"${ARGS0}"[@]\}

    if [[ "${num}" -eq 0 ]]; then

        hint="\${ARGS0}: array name menu"
        _st_exit "in ${FNN} : NOT_DEFINE as array : '${ARGS0}' : ${hint} : return 1"
        return 1

    fi

    for ((i = 0; i < ${num}; i++)); do

        eval arr_name+=\(\"\${${ARGS0}[$i]}\"\)

    done

    # parr3e_ arr_name

    local arr_res=()

    if [[ "${ARGS1}" == "arr_res" ]]; then
        hint="\$1: parr [n]ame mm, \$2: parr [r]es [mm], \$3: parr string result \$4 0 or num menu"
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : CONFLICT_NAME : ARGS1 not be equal 'arr_res' : ${hint} : return 1"
        return 1
    fi

    eval num=\$\{#"${ARGS1}"[@]\}

    if [[ "${num}" -eq 0 ]]; then

        hint="\${ARGS1}: array result"
        _st_exit "in ${FNN} : NOT_DEFINE as array : '${ARGS1}' : ${hint} : return 1"
        return 1

    fi

    for ((i = 0; i < ${num}; i++)); do
        eval arr_res+=\(\"\${${ARGS1}[$i]}\"\)
    done

    # parr3e_ arr_res

    eval result=${ARGS2}

    #! start bash select -----------------------------------
    #! enter env menu: $1 as nomber menu, arr as name of points, res as using stinr
    # echo -e "${BLUE}--- exec ${FNN}() (num_menu) ---${NORMAL}" #started functions

    local num_res=
    local item_arr=
    #{arr_res}
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    arr_name+=("exit menu")
    arr_res+=("return 0")

    #! _parr3e arr_name
    #! _parr3e arr_res

    if _isn_od $ARGS3; then
        hint="\$3: 0 or num menu"
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : NOT_NUMBER : '$ARGS3' : ${hint} : return 1"
        return 1
    fi

    if ! [[ $ARGS3 -le ${#arr_name[@]} ]]; then
        hint="\$3: 0 or num menu"
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '[[ \$ARGS3 -le \${#arr_name[@]} ]]' : ${hint} : return 1"
        return 1
    fi

    if [[ -n "$ARGS3" ]] && [[ $ARGS3 -ne 0 ]] && ! _isn_od $ARGS3 && [[ $ARGS3 -le ${#arr_name[@]} ]]; then
        num_res=$(($ARGS3 - 1))
        if [[ "${arr_name[${num_res}]}" == "exit menu" ]]; then

            cd $PPWD
            return 0
        fi
        eval $result=\"${arr_res[${num_res}]}\"

        cd $PPWD
        return 0
    fi
    PS3="eligendi actiones: "
    select item_arr in "${arr_name[@]}"; do
        for ((i = 0; i < 1000; i++)); do
            if [[ ${item_arr} == ${arr_name[$i]} ]]; then
                if [[ "${arr_name[$i]}" == "exit menu" ]]; then
                    return 0
                fi
                eval $result=\"${arr_res[$i]}\"

                cd $PPWD
                return 0
            fi
        done
    done

    cd $PPWD
    return 0

}
