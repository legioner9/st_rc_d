#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/smp0.arb/d1c8vt_smp0.ram/.grot/d1c8vt_smp0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

d1c8vt_smp0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/d1c8vt_smp0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/smp0.arb/d1c8vt_smp0.ram/.grot/d1c8vt_smp0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/smp0.arb/d1c8vt_smp0.ram/.grot/d1c8vt_smp0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 1cv8t (-inst|-del|-exec)
TAGS: @1c
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTL: 
    _go  : _edit ${d_name}/${FNN}.sh
    _tst :  . ${d_name}/_tst/exec.tst
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
EXAM:
    ${FNN} 
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}

    if [[ "_go" == "$1" ]]; then
        _edit "${d_name}/${FNN}".sh
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/exec.tst ]]; then
            . ${d_name}/_tst/exec.tst
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            cd ${PPWD}
            return 1
        fi
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! legioner9999 124578a124578a

    hint="\$1: (-inst|-del|-exec)"
    if _isn_from ${NARGS} 1 2 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1,2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd ${PPWD}
        return 1
    fi

    local arg2

    if [[ -n "$2" ]]; then
        arg2=$2
    else
        arg2="8.3.25.1257"
    fi

    local dot_v=$arg2
    local d_shift_v=${arg2//\./_}
    echo -e "${GREEN}\$d_shift_v = $d_shift_v${NORMAL}" #print variable

    local dir_src="${HOME}/1c_com_lic/server64_${d_shift_v}"
    local file_src="setup-full-${dot_v}-x86_64.run"

    if ! [[ -f ${dir_src}/${file_src} ]]; then
        hint=".run installer"
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${dir_src}/${file_src}' : ${hint} : return 1"
        cd ${PPWD}
        return 1
    fi

    [[ "$1" == "-inst" ]] && _is_yes "DO?: INSTALL 1c predpr tr" && {
        cd ${dir_src}
        sudo ./${file_src}
        cd ${PPWD}
        return 0
    }

    # /opt/1cv8/x86_64

    local dir_bin="/opt/1cv8/x86_64/${dot_v}"
    local file_bin_uninst="uninstaller-full"

    [[ "$1" == "-del" ]] && _is_yes "DO?: REMOVE 1c predpr tr" && {
        cd ${dir_bin}
        sudo ./${file_bin_uninst}
        cd ${PPWD}
        return 0
    }

    local file_bin_exec="1cv8"

    [[ "$1" == "-exec" ]] && {
        cd ${dir_bin}
        ./${file_bin_exec} &
        cd ${PPWD}
        return 0
    }

    _st_err "\$1 not (-inst|-del|-exec)"
    cd ${PPWD}
    return 1
    #RRR

}

cd "${idir}"
unset filename
#{post_fn}
