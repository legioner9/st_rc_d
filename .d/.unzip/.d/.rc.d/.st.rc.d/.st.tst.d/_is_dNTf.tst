#!/bin/bash

if ! command -v _is_dNTf; then
    echo "TYPE_ERROR : _is_dNTf" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh) == "_is_dNTf" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh) == _is_dNTf' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh' : return 1" >&2
    return 1
fi
