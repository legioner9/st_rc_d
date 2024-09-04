#!/bin/bash

if ! command -v _isn_od; then
    echo "TYPE_ERROR : _isn_od" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_od.tst.d/_isn_od.tst.sh) == "_isn_od" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_od.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_od.tst.d/_isn_od.tst.sh) == _isn_od' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_od.tst.d/_isn_od.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_od.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_od.tst.d/_isn_od.tst.sh' : return 1" >&2
    return 1
fi
