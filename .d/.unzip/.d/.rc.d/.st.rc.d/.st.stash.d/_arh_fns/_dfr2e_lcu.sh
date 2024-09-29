#!/bin/bash

_dfr2e_lcu() {

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
    local item_ls=

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
MAIN: ${FNN} :: recuce _df2e + __.lcu : \$1 like ls (only file) (@|path) @ if path='' [, \$2 .ext]
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

    #? ----- START _dfr2e_lcu body -----

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    #     cd $PPWD
    # fi

    #[[ptr_path]]
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    local lcu

    if [[ -z "$1" ]]; then
        _st_exit "in _dfr2e() : \$1 NOT_DEFINE : '$1', hint : '@ or path_to_dir' return 1"
        return 1
    fi

    if [[ "$1" == "@" ]]; then
        # ls
        lcu=0
        for item in $(ls); do

            if [ ${lcu} -eq 0 ]; then
                for item_ls in $(ls); do
                    if [ "${item_ls}" == "__.lcu" ]; then
                        echo "__.lcu"
                        lcu=1
                    fi
                done
            fi

            if [ -z "$2" ]; then
                # echo -e "${HLIGHT}--- [ -d /$item ] || [ -f /$item ] ---${NORMAL}" #start files

                if [ -f "$item" ] && [ "${item:0:1}" != "_" ]; then
                    echo "$item"
                fi

                if [ -d "$item" ] && [ "${item:0:1}" != "_" ]; then
                    _dfr2e_lcu "$item"
                fi

            else
                local _dfr2e_ext=
                _dfr2e_ext=$(_prs_f -e "$item")
                if [ -f "$item" ] && [ "${item:0:1}" != "_" ] && [ "${_dfr2e_ext}" == "$2" ]; then
                    echo "$item"
                fi

                if [ -d "$item" ] && [ "${item:0:1}" != "_" ]; then
                    _dfr2e_lcu "$item" "$2"
                fi
            fi

        done

    else

        ls $1 >/dev/null || {
            _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'ls $1 >/dev/null' : ${hint} : return 1"
            return 1
        }
        lcu=0
        for item in $(ls $1); do

            if [ ${lcu} -eq 0 ]; then
                for item_ls in $(ls $1); do
                    if [ "${item_ls}" == "__.lcu" ]; then
                        echo "$1/__.lcu"
                        lcu=1
                    fi
                done
            fi

            # echo -e "${GREEN}\$1/$item = file://$1/$item${NORMAL}" #print variable
            if [ -z "$2" ]; then
                if [ -f "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    echo "$1/$item"
                fi
                if [ -d "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    _dfr2e_lcu "$1/$item"
                fi
            else
                local _dfr2e_ext=
                _dfr2e_ext=$(_prs_f -e "$item")
                if [ -f "$1/$item" ] && [ "${item:0:1}" != "_" ] && [ "${_dfr2e_ext}" == "$2" ]; then
                    echo "$1/$item"
                fi
                if [ -d "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    _dfr2e_lcu "$1/$item" "$2"
                fi
            fi

        done
    fi

    cd $PPWD
    return 0

    #? ----- END _dfr2e_lcu body -----

    cd $PPWD
    return 0

}
