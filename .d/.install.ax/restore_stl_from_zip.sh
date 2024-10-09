#!/bin/bash

read -p "Enter full path for st_rc_d  :" ST_RC_D_PATH

echo -e "${CYAN}--- restore_stl_from_zip_rnd7_747dad6() $* in file://${ST_RC_D_PATH}/.d/.sh/restore_stl_from_zip.sh ---${NORMAL}" #started functions

restore_stl_from_zip_rnd7_747dad6() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    #! START BODY FN ---------------------------------------

    [ -z "${ST_RC_D_PATH}" ] && read -rp "Enter full path for st_rc_d : " ST_RC_D_PATH
    if [ -d "${ST_RC_D_PATH}" ]; then
        echo -e "\033[1m\033[37m\033[41m${ST_RC_D_PATH} NOT dir return 1\033[0m"
        return 1
    fi

    #     fi

    echo "START BODY FN : ${FNN}() $*"

    #{{body_fn}}

    local dt=
    local st=
    local post_date=

    dt=$(date +%d%m%Y%H%M%S)
    st=$(date +%s)
    post_date="${st}_${dt}"

    [ -f ${HOME}/.d.zip ] && {
        mv ${HOME}/.d.zip ${HOME}/.d.zip.${post_date}
        mv ${HOME}/.d ${HOME}/.d.${post_date}
    }

    cp ${ST_RC_D_PATH}/.d/.zip/.d.zip ${HOME}
    cd ${HOME}
    unzip .d.zip

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

restore_stl_from_zip_rnd7_747dad6 "$@"
