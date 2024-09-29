#!/bin/bash

read -p "DO? strcd_mig_to_dotd"

#* tst st.sh.d.res

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d/v_bag_1/tst.dir || {
    echo "EXEC_FAIL : cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d/v_bag_1/tst.dir" >&2
    return 1
}

rm -r .st.sh.d.res
cp -r ./.st.sh.d.init/. ./.st.sh.d.res

cat .st.sh.d.res/.st.lst
echo
# unset IFS
_s2f "/\.st\.rc\.d" "/\.d/\.rc\.d/\.st\.rc\.d" .st.sh.d.res/.st.lst
# _s2f '/.d/.rc.d/.st.rc.d' '/.d/.rc.d/.d/.rc.d/.st.rc.d' /home/st/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d/v_bag_1/tst.dir/.st.sh.d.res/.st.lst
unset IFS
# _s2f "/.d/.rc.d/.st.rc.d" "/.d/.rc.d/.d/.rc.d/.st.rc.d" .st.sh.d.res/tst.sh
unset IFS
# cat .st.sh.d.res/.st.lst
# echo
# cat .st.sh.d.res/tst.sh
# echo

diff .st.sh.d.res/.st.lst  .st.sh.d.init/.st.lst
# diff .st.sh.d.res/tst.sh  .st.sh.d.init/tst.sh

#*
