#!/bin/bash

_dpl_strc() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh , line=${LINENO}, ${FNN}() : \${PPWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    echo -e "${CYAN}--- start : ${FUNCNAME}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FUNCNAME} :: 
TAGS:
\$1 
[, \$2]
CNTL: 
    _e : _edit body      : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh
    _t : _edit tst_dir   : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst.d
    _d : exec tst_dir_fn : . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst.d/_dpl_strc.tst.sh
EXAM: 
    ${FUNCNAME}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst.d
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst.d/_dpl_strc.tst.sh
        return 0
    fi

    if ! _is_rr; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh, line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_is_rr' : return 1" >&2
        return 1

    fi

    # local name_repo=

    # for name_repo in $(_f2e ${HOME}/.d/.rc.d/.st.rc.d/.st.data.d/_bcp_strc/file.rc.lst); do

    #     if [[ -f ${ST_RC_D_PATH}/.d/.zip/.${name_repo}.rc.zip ]]; then

    #         [[ -f ${HOME}/.d/.rc.d/.${name_repo}.rc~ ]] && rm ${HOME}/.d/.rc.d/.${name_repo}.rc~

    #         mv ${HOME}/.d/.rc.d/.${name_repo}.rc ${HOME}/.d/.rc.d/.${name_repo}.rc~

    #         [[ -f ${HOME}/.d/.rc.d/.${name_repo}.rc.zip ]] && rm ${HOME}/.d/.rc.d/.${name_repo}.rc.zip

    #         cp ${ST_RC_D_PATH}/.d/.zip/.${name_repo}.rc.zip ${HOME}/.d/.rc.d

    #     else
    #         _st_exit "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${ST_RC_D_PATH}/.d/.zip/.${name_repo}.rc.zip' : ${hint} : return 1"
    #         return 1
    #     fi

    #     cd ${HOME}/.d/.rc.d/

    #     unzip .${name_repo}.rc.zip

    # done

    if ! _is_yes "deploy file://${ST_RC_D_PATH}/.d/.zip/.d.zip to file://${HOME}/.d ?"; then
        echo "answer NOT 'y' : return 0 from _dpl_strc()"
        cd $PPWD
        return 0
    fi

    if [[ -f ${HOME}/.d.zip ]]; then
        echo -e "${HLIGHT}--- exec: rm ${HOME}/.d.zip ---${NORMAL}" #start files
        rm ${HOME}/.d.zip
    fi

    if [[ -f ${ST_RC_D_PATH}/.d/.zip/.d.zip ]]; then
        cp ${ST_RC_D_PATH}/.d/.zip/.d.zip ${HOME}
    else
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh , line=${LINENO}, ${FNN}() : NOT_FILE : 'file://${ST_RC_D_PATH}/.d/.zip/.d.zip' : ${hint} : return 1" >&2
        cd $PPWD
        return 1
    fi

    if [[ -d ${HOME}/.d ]]; then
        mv ${HOME}/.d ${HOME}/.d~
    else
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${HOME}/.d' : return 1" >&2
        cd $PPWD
        return 1
    fi

    if ! _unzip_to ${HOME} ${HOME}/.d.zip; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_unzip_to ${HOME} ${HOME}/.d.zip' : ${hint} : return 1"
        cd $PPWD
        return 1
    fi

    if ! _is_rr; then
        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh, line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_is_rr' : be exec : mv -r ${HOME}/.d~ ${HOME}/.d" >&2
        if ! mv -r ${HOME}/.d~ ${HOME}/.d; then
            echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh, line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'mv -r ${HOME}/.d~ ${HOME}/.d' : return 1" >&2
            cd $PPWD
            return 1
        fi
    fi

    cd $PPWD
    return 0

}
