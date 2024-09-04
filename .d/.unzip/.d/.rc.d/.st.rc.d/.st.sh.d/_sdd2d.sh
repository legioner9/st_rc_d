#!/bin/bash

_sdd2d() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    #* local fn_data_dir=${STRC_DATA_PATH}/.d/.st.rc.data.d/_sdd2d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FUNCNAME} :: cp dir \${ARGS[2]} to \${ARGS[3]} with replace \${ARGS[0]} to \${ARGS[1]} in files and name node
TAGS:
\$1 reciver_string
\$2 inserter_string
\$3 reciver_result_dir
\$4 dir_contane_result
CNTL: 
    _e : body fn : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh
    _t : tst_dir : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_sdd2d.tst.d

NB!!: escaping in \${ARGS[1]} '\[' '\]' '\\\$' '\^' '\\\\\'
EXAM: 
    ${FUNCNAME}
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

    hint="\$1 reciver_string, \$2 inserter_string, \$3 reciver_result_dir, \$4 dir_contane_result"
    if _isn_from ${NARGS} 4 4 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '4' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #* ${STRC_DATA_PATH}/.d/.st.data.d/_sdd2d

    # if [[ -z "${ARGS[2]}" ]]; then
    #     echo "\${ARGS[2]} NOT_DEFINE return 1" >&2
    #     return 1
    # fi

    #! ptr_path
    local init_dir="${ARGS[2]}"
    echo -e "${GREEN}\$init_dir = $init_dir${NORMAL}" #print variable

    if ! _abs_path "${PPWD}" init_dir; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_abs_path ${PPWD} init_dir' : ${hint} : return 1" >&2
        return 1
    fi

    init_dir="$(_abs_path "${PPWD}" "init_dir")"
    #[[ptr_path_s]]

    if ! [[ -d "$init_dir" ]]; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh , line=${LINENO}, ${FUNCNAME}() : NOT_DIR : 'file://$init_dir' : ${hint} : return 1" >&2
        return 1
    fi

    #! ptr_path
    local dir_contane_result="${ARGS[3]}"
    echo -e "${GREEN}\$dir_contane_result = $dir_contane_result${NORMAL}" #print variable

    if ! _abs_path "${PPWD}" dir_contane_result; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_abs_path ${PPWD} init_dir' : ${hint} : return 1" >&2
        return 1
    fi

    dir_contane_result="$(_abs_path "${PPWD}" "dir_contane_result")"
    #[[ptr_path_s]]

    if ! [[ -d "$init_dir" ]]; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh , line=${LINENO}, ${FUNCNAME}() : NOT_DIR : 'file://$init_dir' : ${hint} : return 1" >&2
        return 1
    fi

    local reciver=${ARGS[0]}
    local inserter=${ARGS[1]}

    local init_dir_name=$(basename $init_dir)
    # local init_dir_base=$(dirname $init_dir)
    local init_dir_base=${dir_contane_result}

    echo -e "${HLIGHT}--- exec: _s2se $reciver $inserter $init_dir_name ---${NORMAL}" #start files
    local result_dir_name=$(_s2se $reciver $inserter $init_dir_name)

    echo -e "${GREEN}\$result_dir_name = $result_dir_name${NORMAL}" #print variable

    # echo -e "${HLIGHT}--- exec: cp -r ${init_dir_base}/${init_dir_name}/. ${init_dir_base}/${result_dir_name} ---${NORMAL}" #start files
    if [[ -d ${init_dir_base}/${result_dir_name} ]]; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh , line=${LINENO}, ${FNN}() : DIR_EXIST: 'file://${init_dir_base}/${result_dir_namer}' : ${hint} : return 1" >&2
        return 1
    fi

    # echo -e "${HLIGHT}--- exec: mkdir ${init_dir_base}/${result_dir_name}~ ---${NORMAL}" #start files
    mkdir ${init_dir_base}/${result_dir_name}~

    # echo -e "${HLIGHT}--- exec: mv ${init_dir_base}/${init_dir_name}~ ${init_dir_base}/${init_dir_name} ---${NORMAL}" #start files
    mv ${init_dir_base}/${result_dir_name}~ ${init_dir_base}/${result_dir_name}

    echo -e "${HLIGHT}--- exec: cp -rfv ${init_dir}/. ${init_dir_base}/${result_dir_name} ---${NORMAL}" #start files
    cp -rf ${init_dir}/. ${init_dir_base}/${result_dir_name}

    local result_dir=${init_dir_base}/${result_dir_name}

    echo -e "${GREEN}\$result_dir = file://$result_dir${NORMAL}" #print variable

    # return 0

    _in_fn_1_sdd2d() {

        if ! [[ -d "$1" ]]; then
            echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh, line=${LINENO}, pwd=${PWD} fn=${FUNCNAME}() : NOT_DIR : '${ARGS[0]}'" >&2
            return 1
        fi

        local item
        for item in $(ls -A "$1"); do
            echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            # echo -e "${HLIGHT}--- exec: echo $item | grep $reciver ---${NORMAL}" #start files
            # echo $item | grep $reciver
            if echo $item | grep $reciver; then
                # echo "--- exec: echo $item | sed \"$reciver | $inserter | g\" "--- #start files
                # echo $item | sed "s|$reciver|$inserter|g"

                echo -e "${HLIGHT}--- exec: _s2se ${ARGS[0]} ${ARGS[1]} $item ---${NORMAL}" #start files
                dest_name=$(_s2se ${ARGS[0]} ${ARGS[1]} $item)

                dest_path=$1/$dest_name
                src_path=$1/$item

                # echo -e "${HLIGHT}--- exec: mv $src_path $dest_path ---${NORMAL}" #start files
                mv $src_path $dest_path
            else
                dest_path=$1/$item
            fi

            if [[ -f $dest_path ]]; then
                echo -e "${HLIGHT}--- exec: _s2f ${ARGS[0]} ${ARGS[1]} $dest_path ---${NORMAL}" #start files
                _s2f ${ARGS[0]} ${ARGS[1]} $dest_path

            elif [[ -d $dest_path ]]; then

                if ! _in_fn_1_sdd2d $dest_path; then
                    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh, line=${LINENO}, pwd=${PWD} fn=${FUNCNAME}() : EXEC_FAIL : '_in_fn_1_sdd2d file://$dest_path' return 1" >&2
                    return 1
                fi

            else
                echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh , line=${LINENO}, _in_fn_1_sdd2d() : NOT_DIR or NOT_FILE : 'file://$dest_path' : ${hint} : return 1" >&2
                return 1
            fi

        done

    }

    # _in_fn_1_sdd2d ${result_dir}

    if ! _in_fn_1_sdd2d $result_dir; then
        echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh, line=${LINENO}, pwd=${PWD} fn=${FUNCNAME}() : EXEC_FAIL : '_in_fn_1_sdd2d $init_dir' return 1" >&2
        return 1
    fi

    cd $PPWD
    return 0

}
