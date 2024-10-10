#!/bin/bash

echo -e "${CYAN}--- main_install_rnd7_55011d8() $* in file://${HOME}/.install.sh/main_install.sh ---${NORMAL}" #started functions

main_install_rnd7_55011d8() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${HOME}/.install.sh/main_install.sh"
    local path_dir="$(dirname "$path_file")"

    local norm="\033[0m"
    local fon_1="\033[7m \033[1m \033[31m \033[40m"
    # \033[0;31m${_W_CONST}\033[0;32m${arr_lib[*]} \033[0;35m\u@\H \w$(__git_ps1 " (%s)") \$\033[0m
    PS1="\033[1m\033[40m\033[34m\u\033[1m\033[40m\033[35m@\H \033[1m\033[40m\033[36m\w\033[1m\033[40m\033[35m \$\033[0m"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        echo -e "${fon_1}in fs= file://${path_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1${norm}"
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

    #! END BODY FN ---------------------------------------
    
    cd $PPWD
    return 0

}

main_install_rnd7_55011d8 "$@"
