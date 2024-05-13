#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/site2d_stl0.ram/.grot/site2d_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

site2d_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/site2d_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/site2d_stl0.ram/.grot/site2d_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/site2d_stl0.ram/.grot/site2d_stl0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 
TAGS:
ARGS: 
\$1 url
    -i file_with_url
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

    hint="\$1: root url (recurce not parent)"
    if _isn_from ${NARGS} 1 1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #RRR

    local arr1=$1

    _st_pause "download? : ${ar1} to dir ${PPWD}"
    _st_pause "do? : wget -r -l3 -k -p -E -np --remote-encoding=UTF-8 --user-agent=Mozilla/5.0 ${ar1} ${ar2}"
    # amount_arg $# min_args max_args
    wget -r -l3 -k -p -E -np --remote-encoding=UTF-8 --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36" "${ar1}"

}

cd "${idir}"
unset filename
#{post_fn}
