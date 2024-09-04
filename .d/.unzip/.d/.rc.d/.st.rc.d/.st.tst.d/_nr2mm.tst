#!/bin/bash

if ! command -v _nr2mm; then
    echo "TYPE_ERROR : _nr2mm" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh) == "_nr2mm" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh) == _nr2mm' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_nr2mm.tst.d/_nr2mm.tst.sh' : return 1" >&2
    return 1
fi
