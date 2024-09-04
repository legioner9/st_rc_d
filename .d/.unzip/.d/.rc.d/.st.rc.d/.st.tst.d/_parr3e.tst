#!/bin/bash

if ! command -v _parr3e; then
    echo "TYPE_ERROR : _parr3e" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_parr3e.tst.d/_parr3e.tst.sh) == "_parr3e" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_parr3e.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_parr3e.tst.d/_parr3e.tst.sh) == _parr3e' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_parr3e.tst.d/_parr3e.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_parr3e.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_parr3e.tst.d/_parr3e.tst.sh' : return 1" >&2
    return 1
fi
