#!/bin/bash

_s2se() {

    # echo -e "${CYAN}--- start : ${FUNCNAME}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FUNCNAME} :: stdout \$1 reciver_string \$2 inserter_string (if \$2 will be emty - \$2=@ ) \$3 reciver_result_string
TAGS:
\$1 reciver_string
\$2 inserter_string
\$3 reciver_result_string
CNTL: 
    _e : body    : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_s2se.sh
    _t : tst_dir : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2se.tst.d
NB!!: escaping in \$2 '\[' '\]' '\\\$' '\^' '\\\\\'
EXAM: 
    ${FUNCNAME}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_s2se.sh
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2se.tst.d
        return 0
    fi

    [ -n "$3" ] || {
        _st_exit "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_s2se.sh , line=${LINENO}, ${FNN}() : NOT_DEFINE : '\$3' : return 1"
        return 1
    }

    if [ "@" == "$2" ]; then

        echo "$3" | sed "s|$1||g"

    else
        echo "$3" | sed "s|$1|$2|g"
    fi
    cd $PPWD
    return 0

}
