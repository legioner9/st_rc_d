#!/bin/bash

if ! command -v _st_err; then
    echo "TYPE_ERROR : _st_err" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_err.tst.d/_st_err.tst.sh) == "_st_err" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_err.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_err.tst.d/_st_err.tst.sh) == _st_err' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_err.tst.d/_st_err.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_err.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_err.tst.d/_st_err.tst.sh' : return 1" >&2
    return 1
fi
