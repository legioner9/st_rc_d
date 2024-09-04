#!/bin/bash

if ! command -v _sRf; then
    echo "TYPE_ERROR _s2se" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_sRf.tst.d/_sRf.tst.sh) == "_sRf" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_sRf.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_sRf.tst.d/_sRf.tst.sh) == _sRf' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_sRf.tst.d/_sRf.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_sRf.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_sRf.tst.d/_sRf.tst.sh' : return 1" >&2
    return 1
fi
