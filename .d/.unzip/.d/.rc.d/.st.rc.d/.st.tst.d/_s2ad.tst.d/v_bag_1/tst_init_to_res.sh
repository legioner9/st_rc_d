#!/bin/bash

read -p "DO? strcd_mig_to_dotd"



#* tst st.sh.d.res

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d/v_bag_1/tst.dir || {
    echo "EXEC_FAIL : cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_s2f.tst.d/v_bag_1/tst.dir" >&2
    return 1
}

rm -r .st.sh.d.res
cp -r ./.st.sh.d.init/. ./.st.sh.d.res

_s2ad "/.d/.rc.d/.st.rc.d" "/.d/.rc.d/.d/.rc.d/.st.rc.d" ".st.sh.d.res"

cat .st.sh.d.res/.st.lst

#*

