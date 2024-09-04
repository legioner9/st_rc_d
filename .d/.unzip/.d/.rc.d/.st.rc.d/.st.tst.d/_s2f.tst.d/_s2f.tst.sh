#!/bin/bash

cd ~/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d || echo "cd ~/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d EXEC_FALI" >&2


cd tst.d ||
rm tst.file
cp init.file tst.file

# echo -e "${HLIGHT}--- exec: _s2f one two tst.file ---${NORMAL}" #start files
# _s2f "_one x y" "_two t" tst.file >/dev/null

cat tst.file

_s2f "_one x y" "_two t" tst.file 

cd ~/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d || echo "cd ~/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d EXEC_FALI" >&2


cat tst.d/tst.file > res
echo >> res
flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d/_st_exit.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_st_exit.tst.d/_st_exit.tst.sh true"
    return 0
fi
echo


