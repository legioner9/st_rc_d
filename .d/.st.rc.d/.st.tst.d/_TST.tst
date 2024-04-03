#!/bin/bash

if ! command -v _TST; then
    echo "TYPE_ERROR : _TST" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_TST.tst.d/_TST.tst.sh) == "_TST" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_TST.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_TST.tst.d/_TST.tst.sh) == _TST' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_TST.tst.d/_TST.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_TST.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_TST.tst.d/_TST.tst.sh' : return 1" >&2
    return 1
fi
