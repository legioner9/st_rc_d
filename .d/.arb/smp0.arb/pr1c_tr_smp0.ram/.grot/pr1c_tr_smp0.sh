#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/pr1c_tr_stl0.ram/.grot/pr1c_tr_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

pr1c_tr_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/pr1c_tr_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/pr1c_tr_stl0.ram/.grot/pr1c_tr_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/pr1c_tr_stl0.ram/.grot/pr1c_tr_stl0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: \$1 (-inst|-del) 1c trane predpriyatie [, \$2 = num v (default 8.3.25.1257)]
TAGS:
ARGS: 
\$1 (-inst|-del)
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
            return 1
        fi
    fi

    hint="\$1: (-inst|-del)"
    if _isn_from ${NARGS} 1 2 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1,2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    local arg2

    if [[ -n "$2" ]]; then
        arg2=$2
    else
        arg2="8.3.25.1257"
    fi

    local dot_v=$arg2
    local d_shift_v=${arg2/\./_}
    echo -e "${GREEN}\$d_shift_v = $d_shift_v${NORMAL}" #print variable

    local dir_src="/run/media/st/TOSHIBA_EXT/1c_distr/predpr_demo/training_${d_shift_v}_LinuxRun"
    local file_src="setup-training-${dot_v}-x86_64.run"

    if ! [[ -f ${dir_src}/${file_src} ]]; then
        hint=".run installer"
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${dir_src}/${file_src}' : ${hint} : return 1"
        return 1
    fi

    [[ "$1" == "-inst" ]] && _is_yes "DO?: INSTALL 1c predpr tr" && {
        cd ${dir_src}
        sudo ./${file_src}
        return 0
    }

    # /opt/1cv8/x86_64

    [[ "$1" == "-del" ]] && _is_yes "DO?: REMOVE 1c predpr tr" && {
        cd ${dir_src}
        sudo ./${file_src}
        return 0
    }
    _st_err "\$1 not (-inst|-del)"
    return 1
    #RRR

}

cd "${idir}"
unset filename
#{post_fn}
