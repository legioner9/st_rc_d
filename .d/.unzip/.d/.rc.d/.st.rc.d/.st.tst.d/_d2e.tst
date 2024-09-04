#!/bin/bash

if ! command -v _d2e; then
    echo "TYPE_ERROR" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh) == "_d2e" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh) == _d2e' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh' : return 1" >&2
    return 1
fi
