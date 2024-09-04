#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d EXEC_FALI" >&2

# if true; then
#     echo "_is_dNTf"
# fi

: >${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/res

cd tst.d

touch dir_t/0

touch file_t

if _is_dNTf dir_t file_t &>>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/res; then
    echo "1 true" >>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/res
else
    echo "1 false" >>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/res
fi



touch dir_t/0

if _is_dNTf dir_t file_t &>>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/res; then
    echo "2 true" >>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/res
else
    echo "2 false" >>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/res
fi


# _is_dNTf >/dev/null

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d EXEC_FALI" >&2

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh true"
    return 0
fi
    