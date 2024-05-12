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
MAIN: ${FNN} :: inst or del 1c predpriatie from /run/media/st/TOSHIBA_EXT/1c_distr/predpr_demo/training_8_3_25_1257_LinuxRun/setup-training-8.3.25.1257-x86_64.run
TAGS:
ARGS: 
\$1  -inst
     -del
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

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    # /run/media/st/TOSHIBA_EXT/1c_distr/predpr_demo/training_8_3_25_1257_LinuxRun/setup-training-8.3.25.1257-x86_64.run

    local dir_src="/run/media/st/TOSHIBA_EXT/1c_distr/predpr_demo/training_8_3_25_1257_LinuxRun"
    local file_src="setup-training-8.3.25.1257-x86_64.run"

    if ! [[ -f ${dir_src}/${file_src} ]]; then
        hint=".run installer"
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${dir_src}/${file_src}' : ${hint} : return 1"
        return 1
    fi

    [[ "$1" == "-inst" ]] && {
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
