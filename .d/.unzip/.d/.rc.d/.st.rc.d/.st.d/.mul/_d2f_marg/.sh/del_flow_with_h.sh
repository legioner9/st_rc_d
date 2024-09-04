#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/st.d/.mul/_d2f_marg || {
    hint=
    _st_exit "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/st.d/.mul/_d2f_marg/.sh/cr_flow_with_h.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'cd ${HOME}/st.d/.mul/_d2f_marg' : ${hint} : return 1"
    return 1
}

# if [[ -z "$1" ]]; then
#     hint="\$1: name of flow for _d2f_marg"
#     _st_exit "in fs= file://${HOME}/st.d/.mul/_d2f_marg/.sh/cr_flow_with_h.sh , line=${LINENO}, ${FNN}() : NOT_DEFINE : '\$1' : ${hint} : return 1"
#     return 1
# fi

arr=($(_df2e ${HOME}/.d/.rc.d/.st.rc.d/st.d/.mul/_d2f_marg))

# _parr3e arr

res=()
item=

for item in $(_df2e ${HOME}/.d/.rc.d/.st.rc.d/st.d/.mul/_d2f_marg); do
    res+=($(_prs_f -n ${item}))
done

# _parr3e res

str_res_nr2mm=

_nr2mm arr res str_res_nr2mm 0

if _is_yes "DO? : delete file://${HOME}/.d/.rc.d/.st.rc.d/st.d/.mul/_d2f_marg/$str_res_nr2mm.flow"; then
    rm -r ${HOME}/.d/.rc.d/.st.rc.d/st.d/.mul/_d2f_marg/$str_res_nr2mm.flow
    rm ${HOME}/.d/.rc.d/.st.rc.d/st.d/.mul/_d2f_marg/$str_res_nr2mm.h
fi
