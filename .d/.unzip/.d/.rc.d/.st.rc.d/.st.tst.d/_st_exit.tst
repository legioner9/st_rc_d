#!/bin/bash

if ! command -v _st_exit; then
    echo "TYPE_ERROR : _st_exit" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d/_st_exit.tst.sh) == "_st_exit" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d/_st_exit.tst.sh) == _st_exit' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d/_st_exit.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d/_st_exit.tst.sh' : return 1" >&2
    return 1
fi
