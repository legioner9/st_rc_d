#!/bin/bash

if ! command -v _st_info; then
    echo "TYPE_ERROR : _st_info" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_info.tst.d/_st_info.tst.sh) == "_st_info" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_info.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_info.tst.d/_st_info.tst.sh) == _st_info' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_info.tst.d/_st_info.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_info.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_info.tst.d/_st_info.tst.sh' : return 1" >&2
    return 1
fi
