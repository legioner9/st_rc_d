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
    local rvrc="\033[7m"

    local font_black="\033[30m"
    local font_red="\033[31m"
    local font_green="\033[32m"
    local font_yellow="\033[33m"
    local font_blue="\033[34m"
    local font_purple="\033[35m"
    local font_cyan="\033[36m"
    local font_white="\033[37m"

    local grnd_black="\033[1m\033[40m\033[30m"
    local grnd_red="\033[1m\033[40m\033[31m"
    local grnd_green="\033[1m\033[40m\033[32m"
    local grnd_yellow="\033[1m\033[40m\033[33m"
    local grnd_blue="\033[1m\033[40m\033[34m"
    local grnd_purple="\033[1m\033[40m\033[35m"
    local grnd_cyan="\033[1m\033[40m\033[36m"
    local grnd_white="\033[1m\033[40m\033[37m"

    # echo -e "${grnd_black} grnd_black ${norm}"
    # echo -e "${grnd_red} grnd_red ${norm}"
    # echo -e "${grnd_green} grnd_green ${norm}"
    # echo -e "${grnd_yellow} grnd_yellow ${norm}"
    # echo -e "${grnd_blue} grnd_blue ${norm}"
    # echo -e "${grnd_purple} grnd_purple ${norm}"
    # echo -e "${grnd_cyan} grnd_cyan ${norm}"
    # echo -e "${grnd_white} grnd_white ${norm}"

    # \033[0;31m${_W_CONST}\033[0;32m${arr_lib[*]} \033[0;35m\u@\H \w$(__git_ps1 " (%s)") \$\033[0m
    PS1="${grnd_cyan}\u${grnd_black} @\H${grnd_green} \w $ ${norm}"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    # cd ${path_dir} || {
    #     # hint="\$1: \$2: "
    #     echo -e "${font_err}in fs= file://${path_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1${norm}" >&2
    #     return 1
    # }

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    erro_rnd7_55011d8() {
        echo -e "${grnd_red}$1${norm}" >&2
    }

    varn_rnd7_55011d8() {
        echo -e "${grnd_yellow}$1${norm}"
    }

    info_rnd7_55011d8() {
        echo -e "${grnd_green}$1${norm}"
    }

    is_yes_rnd7_55011d8() {
        # hint string
        local yes
        echo -e "${grnd_green}$1 : only 'y' accept the offer${norm}"
        read -r -p " (y|) " yes
        echo -e "${grnd_green}You enter : ${yes}${norm}"
        if [ "${yes:-no}" == "y" ]; then
            cd $PPWD
            return 0
        else
            cd $PPWD
            return 1
        fi
    }

    # echo -e "${fon_1} warn string ${norm}" >&2

    command -v wget >/dev/null || {
        err_rnd7_55011d8 "util 'wget' not find : return 1"
        cd $PPWD
        return 1
    }

    varn_rnd7_55011d8 "Default parameters install: 
    ${HOME}/STL - dir with .d.zip STL and functions STL0
    ${HOME}/STL_DATA - dir with user data for functions STL0"

    is_yes_rnd7_55011d8 "DO? : Continue with that Default parameters" || {
        info_rnd7_55011d8 "reject install : return 0"
        cd $PPWD
        return 0
    }

    mkdir_rnd7_55011d8() {

        if [ -d "$1" ]; then
            erro_rnd7_55011d8 "DIR_EXIST : ' file://$1 '"
            is_yes_rnd7_55011d8 "DO? : remove ' file://$1 ' dir?" && {

                varn_rnd7_55011d8 "rm -rf $1"
                rm -rf "$1"

                varn_rnd7_55011d8 "mkdir $1"
                mkdir "$1" || {
                    erro_rnd7_55011d8 "FAIL_EXEC : 'mkdir $1' return 1"
                    cd $PPWD
                    return 1
                }

            }

        else
            varn_rnd7_55011d8 "mkdir $1"
            mkdir "$1" || {
                erro_rnd7_55011d8 "FAIL_EXEC : 'mkdir $1' return 1"
                cd $PPWD
                return 1
            }
        fi

    }

    mkdir_rnd7_55011d8 ${HOME}/STL
    mkdir_rnd7_55011d8 ${HOME}/STL_DATA

    varn_rnd7_55011d8 "Default parameters download from github.com @legioner9 (use wget)"

    is_yes_rnd7_55011d8 "DO? : Continue with that Default parameters download" || {

        is_yes_rnd7_55011d8 "Did you upload STL and STL_DATA yourself?" || {
            info_rnd7_55011d8 "reject install : return 0"
            cd $PPWD
            return 0
        }
    }

    # wget https://github.com/legioner9/st_rc_d/archive/refs/heads/master.zip
    # wget https://gitflic.ru/project/legioner9/st_rc_d/file/downloadAll?branch=master

    if is_yes_rnd7_55011d8 "DO? wget https://github.com/legioner9/st_rc_d/archive/refs/heads/master.zip in ${HOME}/STL"; then

        wget https://github.com/legioner9/st_rc_d/archive/refs/heads/master.zip -O ${HOME}/STL/master.zip || {
            erro_rnd7_55011d8 "FAIL_EXEC : 'wget https://github.com/legioner9/st_rc_d/archive/refs/heads/master.zip -O ${HOME}/STL/master.zip' return 1"
            cd $PPWD
            return 1
        }

        ${HOME}/STL
        unzip

    else

        info_rnd7_55011d8 "reject install : return 0"
        cd $PPWD
        return 0
    fi

    # https://github.com/legioner9/st_rc_d_data/archive/refs/heads/master.zip
    # https://gitflic.ru/project/st_rc_d_data/sta/file/downloadAll?branch=master

    if is_yes_rnd7_55011d8 "DO? wget https://github.com/legioner9/st_rc_d_data/archive/refs/heads/master.zip in ${HOME}/STL_DATA "; then
        if [ -f ${HOME}/STL_DATA/master.zip ]; then
            is_yes_rnd7_55011d8 "FILE_EXIST ${HOME}/STL_DATA/master.zip rewget ? " && {
                rm -f ${HOME}/STL_DATA/master.zip
                wget https://github.com/legioner9/st_rc_d_data/archive/refs/heads/master.zip -O ${HOME}/STL_DATA/master.zip || {
                    erro_rnd7_55011d8 "FAIL_EXEC : 'wget https://github.com/legioner9/st_rc_d_data/archive/refs/heads/master.zip -O ${HOME}/STL_DATA/master.zip' return 1"
                    cd $PPWD
                    return 1
                }
            }
        else
            wget https://github.com/legioner9/st_rc_d_data/archive/refs/heads/master.zip -O ${HOME}/STL_DATA/master.zip || {
                erro_rnd7_55011d8 "FAIL_EXEC : 'wget https://github.com/legioner9/st_rc_d_data/archive/refs/heads/master.zip -O ${HOME}/STL_DATA/master.zip' return 1"
                cd $PPWD
                return 1
            }
        fi
    else
        info_rnd7_55011d8 "reject install : return 0"
        cd $PPWD
        return 0
    fi

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

main_install_rnd7_55011d8 "$@"
