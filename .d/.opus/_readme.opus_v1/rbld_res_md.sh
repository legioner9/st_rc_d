#!/bin/bash

echo -e "${CYAN}--- rbld_res_md_rnd7_8e3f265() $* in file://${ST_RC_D_PATH}/.d/.opus/readme.opus/rbld_res_md.sh ---${NORMAL}" #started functions

rbld_res_md_rnd7_8e3f265() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_PATH}/.d/.opus/readme.opus/rbld_res_md.sh"
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

        cd $PPWD
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

    #{{body_fn}}

    if [ -d $path_dir/cntx.ins.d ] && [ -f $path_dir/cntx.res.md ]; then
        echo | ufl_stl0 9 $path_dir/cntx.ins.d $path_dir/cntx.res.md 2
    fi

    #! rebuild all in .d/.lst/cntx.res.copy.lst
    local cpy_pth=
    for cpy_pth in $(_f2e ${path_dir}/.d/.lst/cntx.res.copy.lst); do
        echo -e "${GREEN}\$cpy_pth = ' file://$cpy_pth'${NORMAL}"

        if [ -d $path_dir/cntx.ins.d ] && [ -f $cpy_pth ]; then
            echo | ufl_stl0 9 $path_dir/cntx.ins.d $cpy_pth 2
        fi

    done

    _edit $path_dir/cntx.res.md
    #! END BODY FN ---------------------------------------
    
    cd $PPWD
    return 0

}

rbld_res_md_rnd7_8e3f265 "$@"
