#!/bin/bash

_gig_st_rc_fn() {

    echo -e "${CYAN}--- start : ${FUNCNAME}() $@ ---${NORMAL}" #sistem info mesage

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

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    _lnv2e ${tst_lst_env}

    if [ "-h" == "$1" ]; then
        echo -e "
MAIN: ${FUNCNAME} :: generate \$1 st_rc_fn like _XXX
TAGS:
\$1 ('name' cr 'name' stl function |
    '_f1' : cr '_tst' stl function, that function not used - only demo )
[, \$2]
CNTL: 
    _e  : _edit body      : _edit ${sh_file}
    _t  : _edit tst_dir   : _edit ${tst_dir}
    _d  : exec tst_dir_fn : . ${tst_dir_file}
    _f1 : exec tst_dir_fn : . ${flow_dir_file_1}
EXAM: 
    ${FNN}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${tst_dir_file}
        return 0
    fi

    if [[ "_f1" == "$1" ]]; then
        . ${flow_dir_file_1}
        return 0
    fi

    if command -v $1; then
        hint="\$1: name create strs_fn"
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh , line=${LINENO}, ${FNN}() : : EXEC_TRUE : 'command -v $1' : ${hint} : return 1" >&2
        return 1
    fi

    if [[ -f ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/$1.sh ]]; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh , line=${LINENO}, ${FNN}() : FILE_EXIST : '${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/$1.sh' : ${hint} : return 1" >&2
        return 1
    fi

    echo -e "${HLIGHT}--- exec: _sd2d _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_XXX.tst.d ---${NORMAL}" #start files

    if ! _sd2d _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_XXX.tst.d; then

        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_sd2d _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_XXX.tst.d' : ${hint} : return 1" >&2
        return 1

    fi

    if ! _sf2f _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_XXX.tst; then

        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_sd2d _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_XXX.tst' : ${hint} : return 1" >&2
        return 1

    fi

    if ! _sf2f _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_XXX.sh; then

        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_sd2d _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_XXX.sh' : ${hint} : return 1" >&2
        return 1

    fi

    # ${HOME}t/.d/.rpn.ax.d/tml.ax.d/.hie/stl/_XXX/tml.hie
    # ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/_XXX.hie

    _st_info "NOT edit file://${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/_XXX.hie THAT COPY OF file://${HOME}t/.d/.rpn.ax.d/tml.ax.d/.hie/stl/_XXX/tml.hie"

    # ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/_XXX.hie
    echo -e "${HLIGHT}--- cp file://${HOME}/.d/.rpn.ax.d/tml.ax.d/.hie/stl/_XXX/tml.hie file://${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/_XXX.hie ---${NORMAL}" #start files
    cp ${HOME}/.d/.rpn.ax.d/tml.ax.d/.hie/stl/_XXX/tml.hie ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/$1.hie

    if ! _s2f _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/$1.hie; then

        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_sd2d _XXX $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/_XXX.hie' : ${hint} : return 1" >&2
        return 1

    fi

    # ${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX ->  ${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/_XXX.d

    _st_info "NOT edit file://${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/_XXX.d THAT COPY OF file://${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX"

    # ${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/_XXX.hie
    echo -e "${HLIGHT}--- cp -r ${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX/. ${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/_XXX.d ---${NORMAL}" #start files
    cp -r ${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX/. ${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/_XXX.d

    if ! _sd2d _XXX $1 ${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/_XXX.d; then

        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_sd2d _XXX $1 ${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/_XXX.d' : ${hint} : return 1" >&2
        return 1

    fi

    # -------------------------------------------------------------------

    # if ! [[ -f ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/$1.sh ]]; then

    #     cp ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_XXX.sh ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/$1.sh
    #     _s2f '_XXX' $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/$1.sh

    # fi

    # if ! [[ -d ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d ]]; then

    #     mkdir ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d
    #     cp ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_XXX.tst.d/_XXX.tst.sh ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d/$1.tst.sh
    #     _s2f '_XXX' $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d/$1.tst.sh

    #     touch ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d/res
    #     touch ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d/pre

    # fi

    # if ! [[ -d ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d/tst.d ]]; then
    #     mkdir ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d/tst.d
    #     touch ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst.d/tst.d/0
    # fi

    # if ! [[ -f ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst ]]; then
    #     cp ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_XXX.tst ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst
    #     _s2f '_XXX' $1 ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/$1.tst
    # fi

    return 0

}
