#!/bin/bash

if ! command -v _dpl_strc; then
    echo "TYPE_ERROR : _dpl_strc" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst.d/_dpl_strc.tst.sh) == "_dpl_strc" ]]; then
#     echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst.d/_dpl_strc.tst.sh) == _dpl_strc' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst.d/_dpl_strc.tst.sh; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_dpl_strc.tst.d/_dpl_strc.tst.sh' : return 1" >&2
    return 1
fi
