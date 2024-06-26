#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_stl_stl0.ram/.grot/gig_fn_stl.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

gig_fn_stl_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    # [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    # [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_stl_stl0.ram/.grot/gig_fn_stl.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} ::  arb2f_
TAGS:
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTL: 
    _go  : _edit ${d_name}/${FNN}.sh
    _tst :  . ${d_name}/_tst/exec.tst
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
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
            echo "in fs= file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_stl_stl0.ram/.grot/gig_fn_stl.sh , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/gig_fn_stl_stl0

    # _sd2d _XXX $1 ${ST_RC_D_PATH}/.d/.arb/stl0.arb/_XXX_stl0.ram
    #  _sd2d _XXX $1 ${ST_RC_D_PATH}/.d/.arb/smp0.arb
    _sdd2d _XXX $1 ${fn_data_dir}/_XXX_stl0.ram ${ST_RC_D_PATH}/.d/.arb/stl0.arb

}

cd "${idir}"
unset filename
#{post_fn}
