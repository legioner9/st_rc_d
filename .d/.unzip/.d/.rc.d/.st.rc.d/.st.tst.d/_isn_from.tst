#!/bin/bash

if ! command -v _isn_from; then
    echo "TYPE_ERROR : _isn_from" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst.d/_isn_from.tst.sh) == "_isn_from" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst.d/_isn_from.tst.sh) == _isn_from' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst.d/_isn_from.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_isn_from.tst.d/_isn_from.tst.sh' : return 1" >&2
    return 1
fi
