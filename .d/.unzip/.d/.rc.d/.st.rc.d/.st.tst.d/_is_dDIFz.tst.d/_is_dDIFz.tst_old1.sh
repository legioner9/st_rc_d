#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d EXEC_FALI" >&2

if true; then
    echo "_is_dDIFz"
fi

: >res

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/tst.d

echo 0 >dir_dat/0

zip -r ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/file.zip ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/dir_dat >/dev/null

if _is_dDIFz ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/tst.d/dir_dat ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/tst.d/file.zip &>>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res; then
    echo "1 true" &>>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res
else
    echo "1 false" &>>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res
fi

# cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/tst.d

echo 1 >${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/tst.d/dir_dat/0

# # >>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res

if _is_dDIFz ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/tst.d/dir_dat ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/tst.d/file.zip &>>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res; then
    echo "2 true" &>>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res
else
    echo "2 false" &>>${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res
fi

# echo -e "${HLIGHT}--- exec: cat file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res ---${NORMAL}" #start files
# cat ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res

# : >${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/res

# _is_dDIFz >/dev/null

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d EXEC_FALI" >&2

flag=1

#! ILIMINATION DIFF
: >res
: >pre

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/_is_dDIFz.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/_is_dDIFz.tst.sh true"
    return 0
fi
