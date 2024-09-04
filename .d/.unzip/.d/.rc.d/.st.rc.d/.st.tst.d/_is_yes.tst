#!/bin/bash

if ! command -v _is_yes; then
    echo "TYPE_ERROR : _is_yes" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_yes.tst.d/_is_yes.tst.sh) == "_is_yes" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_yes.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_yes.tst.d/_is_yes.tst.sh) == _is_yes' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_yes.tst.d/_is_yes.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_yes.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_yes.tst.d/_is_yes.tst.sh' : return 1" >&2
    return 1
fi
