#!/bin/bash

if ! command -v _is_root; then
    echo "TYPE_ERROR _is_root" >&2
    return 1
fi

cd ~/.d/.rc.d/.st.rc.d/.st.tst.d || echo "cd ~/.d/.rc.d/.st.rc.d/.st.tst.d EXEC_FALI" >&2

if ! [[ $(. ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_root.tst.d/_is_root.tst.sh) == "true" ]]; then
    echo "in fs=file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_root.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '\$(${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_root.tst.d/_is_root.tst.sh) == true' : return 1" >&2
    return 1
fi
