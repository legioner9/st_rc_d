#!/bin/bash

if ! command -v _f2f; then
    echo "TYPE_ERROR" >&2
    return 1
fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2f.tst.d/_f2f.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2f.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_f2f.tst.d/_f2f.tst.sh' : return 1" >&2
    return 1
fi
