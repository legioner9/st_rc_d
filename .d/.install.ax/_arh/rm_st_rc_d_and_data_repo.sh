#!/bin/bash

read -rp "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

cd "${PATH_TO_CLONE}" || {
    echo "in file: dpl_st_rc_d.sh , line=${LINENO} : NOTDIR : ${PATH_TO_CLONE} : return 1" >&2
    return 1
}

rm -rf st_rc_d || {
    echo "in file: dpl_st_rc_d.sh , line=${LINENO} : FAILEXEC : 'rm -rf st_rc_d' : be continue"
    read -rp "Delete ${PATH_TO_CLONE}/st_rc_d : Enter to continue"
}

rm -rf st_rc_d_data || {
    echo "in file: dpl_st_rc_d.sh , line=${LINENO} : FAILEXEC : 'rm -rf st_rc_d_data' : be continue"
    read -rp "Delete ${PATH_TO_CLONE}/st_rc_d_data : Enter to continue"
}

read -rp "Delete from ~/.bashrc code \
starting with 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then' \
and restart you shell : \
Enter to continue"
