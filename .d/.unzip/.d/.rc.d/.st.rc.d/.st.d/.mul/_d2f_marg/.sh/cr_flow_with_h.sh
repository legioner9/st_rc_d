#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/st.d/.mul/_d2f_marg || {
    hint=
    _st_exit "in fs= file://${HOME}/st.d/.mul/_d2f_marg/.sh/cr_flow_with_h.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'cd ${HOME}/st.d/.mul/_d2f_marg' : ${hint} : return 1"
    return 1
}

if [[ -z "$1" ]]; then
    hint="\$1: name of flow for _d2f_marg"
    _st_exit "in fs= file://${HOME}/st.d/.mul/_d2f_marg/.sh/cr_flow_with_h.sh , line=${LINENO}, ${FNN}() : NOT_DEFINE : '\$1' : ${hint} : return 1"
    return 1
fi

if _is_yes "DO? : create st.d/.mul/_d2f_marg/$1.flow"; then

    _sd2d "001_XXX" "$1" "001_XXX.flow"

    _sf2f "001_XXX" "$1" "001_XXX.h"

fi
