#!/bin/bash

echo -e "${CYAN}--- fill_hie_rnd7_4acce45() $* in file://${ST_RC_D_PATH}/.d/.unzip/.d/.rc.d/.st.rc.d/.st.hie.d/.sh/fill_hie.sh---${NORMAL}" #started functions

fill_hie_rnd7_4acce45() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_PATH}/.d/.unzip/.d/.rc.d/.st.rc.d/.st.hie.d/.sh/fill_hie.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        _st_exit "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
        return 1
    }

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
TAGS: @
ARGS: \$1
EXAM: 
EXEC: 
CNTL: 
    _go  : _edit ${path_file}
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
    ${FNN} 
${NORMAL}"
    fi

    if [[ "_go" == "$1" ]]; then
        _edit "${path_file}"
        return 0
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} less more "in fs= file://${path_file} , line=${LINENO}, ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    # local _ARGS_=("$@")
    # _parr3e _ARGS_

    #{{ptr_path}}

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    local item=''
    local sh_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d
    local hie_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d

    local tml_hie=${HOME}/.d/.rpn.ax.d/tml.ax.d/.hie/stl/_XXX/tml.hie

    for item in $(ls ${sh_dir}); do
        item=$(_prs_f -n $item)
        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        if ! [ -f ${hie_dir}/${item}.hie ]; then

            cp ${tml_hie} ${hie_dir}/${item}.hie

            if ! _s2f _XXX ${item} ${hie_dir}/${item}.hie; then

                echo "in fs= file://${path_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_sf2f _XXX ${item} ${hie_dir}/${item}.hie' : ${hint} : return 1" >&2
                # return 1

            fi

        fi
    done

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

fill_hie_rnd7_4acce45 "$@"
