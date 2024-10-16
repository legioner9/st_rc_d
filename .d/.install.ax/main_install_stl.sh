#!/bin/bash

echo -e "${CYAN}--- main_install_d8() $* in file://${HOME}/.install.sh/main_install.sh ---${NORMAL}" #started functions

main_install_d8() {

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

    #* define Prompt String 1 (color)
    PS1="${grnd_cyan}\u${grnd_black} @\H${grnd_green} \w $ ${norm}"

    echo -e "${font_blue}--- ${FUNCNAME[0]} $* in file://${path_file}---${norm}" #started functions

    # cd ${path_dir} || {
    #     # hint="\$1: \$2: "
    #     echo -e "${font_err}in fs= file://${path_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1${norm}" >&2
    #     return 1
    # }

    #! START BODY FN ---------------------------------------

    #* --- greeting ---
    echo "START BODY FN : ${FNN}() $*"

    #* --- define functions---
    erro_d8() {
        echo -e "${grnd_red}$1${norm}" >&2
    }

    varn_d8() {
        echo -e "${grnd_yellow}$1${norm}"
    }

    info_d8() {
        echo -e "${grnd_green}$1${norm}"
    }

    is_yes_d8() {
        # hint string
        local yes=
        echo -e "${grnd_green}$1 : CONFIRM enter only 'y' ${norm}"
        read -r -p " (y|) " yes
        echo -e "${grnd_green}You enter : '${yes}'${norm}"
        if [ "${yes:-no}" == "y" ]; then
            cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 0"
            return 0
        else
            cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
            return 1
        fi
    }

    # echo -e "${fon_1} warn string ${norm}" >&2

    mkdir_d8() {
        echo -e "${font_blue}--- ${FUNCNAME[0]} $* in file://${path_file}---${norm}" #started functions

        if [ -d "$1" ]; then
            erro_d8 "DIR_EXIST : ' file://$1 '"
            is_yes_d8 "DO? : remove ' file://$1 ' dir?" && {

                varn_d8 "rm -rf $1"
                rm -rf "$1"

                varn_d8 "mkdir -p $1"
                mkdir -p "$1" || {
                    erro_d8 "FAIL_EXEC : 'mkdir -p $1' return 1"
                    cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
                    return 1
                }

            }

            return 0

        else
            varn_d8 "mkdir -p $1"
            mkdir -p "$1" || {
                erro_d8 "FAIL_EXEC : 'mkdir $1' return 1"
                cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
                return 1
            }

            return 0
        fi

    }

    unzip_dot_d_d8() {                                                               # $1 path to .d.zip
        echo -e "${font_blue}--- ${FUNCNAME[0]} $* in file://${path_file}---${norm}" #started functions

        if [ -d "${HOME}"/.d ]; then

            is_yes_d8 "DIR_EXIST '${HOME}/.d' rewrite that ?" && {

                [ -d "${HOME}"/.d~ ] && {
                    rm -fr "${HOME}"/.d~
                }

                [ -d "${HOME}"/.d ] && {
                    mv -f "${HOME}"/.d "${HOME}"/.d~
                }

                unzip ${1} -d ${HOME} || {
                    erro_d8 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'unzip ${1} -d ${HOME}' : ${hint} : return 1"
                    cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
                    return 1
                }
            }

        else
            unzip ${1} -d ${HOME} || {
                erro_d8 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'unzip ${1} -d ${HOME}' : ${hint} : return 1"
                cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
                return 1
            }
        fi

        return 0
    }

    cp_f2f_d8() {                                                                    # $1 file issue $2 file dist
        echo -e "${font_blue}--- ${FUNCNAME[0]} $* in file://${path_file}---${norm}" #started functions
        if [ -f "$2" ]; then
            is_yes_d8 "FILE_EXIST '$2' rewrite that ?" && {

                mv -f "${2}" "${2}"~
                cp "$1" "$2" || {
                    erro_d8 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'cp $1 $2' : ${hint} : return 1"
                    cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
                    return 1
                }
            }
            return 0
        else

            cp "$1" "$2" || {
                erro_d8 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'cp $1 $2' : ${hint} : return 1"
                cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
                return 1
            }
            return 0
        fi
    }

    #* --- is exist utils ---
    command -v wget >/dev/null || {
        err_d8 "util 'wget' not find : return 1"
        cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
        return 1
    }

    do_wget_d8() {                                                                   # $1 - linK for wget, $2 - parent dir for wget
        echo -e "${font_blue}--- ${FUNCNAME[0]} $* in file://${path_file}---${norm}" #started functions

        if is_yes_d8 "DO? wget $1 in $2"; then
            if [ -f "$2"/master.zip ]; then
                is_yes_d8 "FILE_EXIST $2/master.zip rewget ? " && {
                    rm -f "$2"/master.zip
                    wget "$1" -O "$2"/master.zip || {
                        erro_d8 "FAIL_EXEC : 'wget $1 -O $2/master.zip' return 1"
                        cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
                        return 1
                    }
                }
                return 0
            else
                wget "$1" -O "$2"/master.zip || {
                    erro_d8 "FAIL_EXEC : 'wget $1 -O $2/master.zip' return 1"
                    cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
                    return 1
                }
            fi
        # else
        #     info_d8 "reject install : return 0"
        #     cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        #     return 1
        fi

        return 0
    }

    #* --- varning + question ---
    varn_d8 "Default parameters install: 
    ${HOME}/.stl/STL - dir with .d.zip STL and functions STL0
    ${HOME}/.stl/STL_DATA - dir with user data for functions STL0
    ${HOME}/.stl/UBIQUE - user directory with general-purpose data"

    is_yes_d8 "DO? : Continue with that Default parameters" || {
        info_d8 "reject install : return 0"
        cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 0"
        return 0
    }

    #* --- varning + question ---
    varn_d8 "Default parameters download from github.com @legioner9 (use wget)"
    is_yes_d8 "DO? : Continue with that Default parameters download" || {

        is_yes_d8 "Did you upload STL and STL_DATA yourself?" || {
            info_d8 "reject install : return 1"
            cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 0"
            return 0
        }
    }

    #* --- define local variables ---
    local dot_stl="${HOME}"/.stl
    local w_legioner9="https://github.com/legioner9"
    local gh_master="archive/refs/heads/master.zip"
    local arr_name_repo=()

    # https://github.com/legioner9/st_rc_d/archive/refs/heads/master.zip
    # https://gitflic.ru/project/legioner9/st_rc_d/file/downloadAll?branch=master

    # https://github.com/legioner9/st_rc_d_data/archive/refs/heads/master.zip
    # https://gitflic.ru/project/st_rc_d_data/sta/file/downloadAll?branch=master

    # https://github.com/legioner9/ubique/archive/refs/heads/master.zip
    # https://gitflic.ru/project/ubique/ubique/file/downloadAll?branch=master

    #* define array repo for wget
    arr_name_repo=(st_rc_d st_rc_d_data ubique)

    local item=

    for item in ${arr_name_repo[@]}; do

        mkdir_d8 "${dot_stl}/${item}" || {
            erro_d8 "EXEC_FAIL : 'mkdir_d8 ${dot_stl}/${item}' :: return 1"
            cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
            return 1
        }

        do_wget_d8 "${w_legioner9}/${item}/${gh_master}" "${dot_stl}/${item}" || {
            erro_d8 "EXEC_FAIL : 'do_wget_d8 ${w_legioner9}/${item}/${gh_master}' :: return 1"
            cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
            return 1
        }

        # cd "${dot_stl}/${item}" || {
        #     echo "EXEC_FAIL : 'cd ${dot_stl}/${item}' :: return 1" >&2
        #     cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        #     return 1
        # } a

        is_yes_d8 "DO? : unzip ${dot_stl}/${item}/master.zip" && {
            unzip ${dot_stl}/${item}/master.zip -d ${dot_stl}/${item} || {
                erro_d8 "EXEC_FAIL : 'unzip ${dot_stl}/${item}/master.zip -d ${dot_stl}/${item}' :: return 1"
                return 1
            }
        }

    done

    mkdir_d8 "${dot_stl}"/.path || {
        erro_d8 "EXEC_FAIL : 'mkdir_d8 ${dot_stl}' :: return 1"
        cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
        return 1
    }

    item=

    for item in ${arr_name_repo[@]}; do

        echo "\${HOME}/.stl/${item}/${item}-master" >"${dot_stl}"/.path/${item}.path

    done

    ST_RC_D_PATH=$(cat "${HOME}"/.stl/.path/st_rc_d.path)

    unzip_dot_d_d8 "${HOME}"/.stl/st_rc_d/st_rc_d-master/.d/.zip/.d.zip || {
        erro_d8 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'unzip_dot_d_d8 ${HOME}/.stl/st_rc_d/st_rc_d-master/.d/.zip/.d.zip' : ${hint} : return 1"
        cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
        return 1
    }

    if is_yes_d8 "DO? : You ~/.bashrc rewrite ? "; then

        cp_f2f_d8 "${HOME}"/.stl/ubique/ubique-master/.s/Store/.bashrc.d/.bashrc.tml "${HOME}"/.bashrc || {
            erro_d8 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'cp_f2f_d8 ${HOME}/.stl/ubique/ubique-master/.s/Store/.bashrc.d/.bashrc.tml ${HOME}/.bashrc' : ${hint} : return 1"
            cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
            return 1
        }

        return 0

    else
        varn_d8 "will be add ~/.bashrc.stl"
        cp_f2f_d8 "${HOME}"/.stl/ubique/ubique-master/.s/Store/.bashrc.d/.bashrc.tml "${HOME}"/.bashrc.stl || {
            erro_d8 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'cp_f2f_d8 ${HOME}/.stl/ubique/ubique-master/.s/Store/.bashrc.d/.bashrc.tml ${HOME}/.bashrc' : ${hint} : return 1"
            cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
            return 1
        }
        varn_d8 "move lines from ~/.bashrc.stl to the end of ~/.bashrc yourself"

        is_yes_d8 "was the transfer made?" || {
            erro_d8 " ~/.bashrc may be incorrect :: return 1"
            cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
            return 1
        }

    fi

    touch ${HOME}/.w

    is_yes_d8 "CHECK ${HOME}/.w define this: w+ or w- ?( WRITE with !!! ) " || {
        varn_d8 "may be later define this: w+ or w-"
        info_d8 "exec : cat file://${HOME}/.w"
        cat ${HOME}/.w
    }

    echo "\${HOME}/tmp_dir_st_rc" >"${HOME}"/.tmp_dir_st_rc
    # TMP_DIR_ST_RC=$(cat "${HOME}"/.tmp_dir_st_rc)

    echo -e "
\${HOME}/.d/.rc.d/.st_rc_d.rc
\${HOME}/.d/.rc.d/.sta.rc
" >"${HOME}"/.d/.lst.d/.st.lst

    # cp_f2f_d8 "${HOME}"/.stl/ubique/ubique-master/.s/Store/.enterrc.d/.enterrc "${HOME}"/.enterrc || {
    #     erro_d8 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'cp_f2f_d8 ${HOME}/.stl/ubique/ubique-master/.s/Store/.bashrc.d/.bashrc.tml ${HOME}/.bashrc' : ${hint} : return 1"
    #     cd "$PPWD" || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 1"
    #     return 1
    # }

    # ST_RC_D_PATH=${HOME}/.stl/st_rc_d/st_rc_d-master
    # echo -e "${grnd_green}\${ST_RC_D_PATH} = ${ST_RC_D_PATH}${norm}"

    # ST_RC_D_DATA_PATH=${HOME}/.stl/st_rc_d_data/st_rc_d_data-master
    # echo -e "${grnd_green}\${ST_RC_D_DATA_PATH} = ${ST_RC_D_DATA_PATH}${norm}"

    # UBIQUE_PATH=${HOME}/.stl/ubique/ubique-master
    # echo -e "${grnd_green}\${UBIQUE_PATH} = ${UBIQUE_PATH}${norm}"

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD || varn_d8 "EXEC_FAIL : 'cd $PPWD' :: return 0"
    return 0

}

main_install_d8 "$@"
