#!/bin/bash

_prs_f() {

    local path=
    local name_ext=
    local name_ext2=
    local name2_ext=

    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_prs_f.sh
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_prs_f.tst.d
        return 0
    fi

    if [ "$1" = "-h" ]; then

        path="/the/path/_foo.ext2.txt"
        echo -e "${BLUE}------------------------ 
MAIN: ${FUNCNAME} ::
TAGS:
path=/the/path/_foo.txt        
\$(_prs_f -d $path)   : $(_prs_f -d $path) 
\$(_prs_f -ne $path)  : $(_prs_f -ne $path)   
\$(_prs_f -n $path)   : $(_prs_f -n $path)   
\$(_prs_f -n2 $path)  : $(_prs_f -n2 $path)   
\$(_prs_f -e $path)   : $(_prs_f -e $path)   
\$(_prs_f -e2 $path)  : $(_prs_f -e2 $path) 
\$(_prs_f -pr $path)  : $(_prs_f -pr $path)   
\$(_prs_f -po $path)  : $(_prs_f -po $path)    
----------------------${NORMAL}"
        return 0
    else
        if [ $# -ne 2 ]; then
            echo "_prs_f() mast be 2 parameters : illegal number of parameters : return 1"
            return 1
        fi
        name_ext="${2##*/}"
        if [ "$1" = "-d" ]; then
            dirname "$2"
        else
            if [ "$1" = "-ne" ]; then
                echo "$name_ext"
            else
                if [ "$1" = "-n" ]; then
                    echo "${name_ext%.*}"
                else
                    if [ "$1" = "-n2" ]; then
                        name2_ext="${name_ext%.*}"
                        echo "${name2_ext%.*}"
                    else
                        if [ "$1" = "-e" ]; then
                            echo "${name_ext##*.}"
                        else
                            if [ "$1" = "-e2" ]; then
                                name_ext2="${name_ext%.*}"
                                echo "${name_ext2##*.}"
                            else
                                if [ "$1" = "-pr" ]; then
                                    echo "${name_ext:0:1}"
                                else
                                    if [ "$1" = "-po" ]; then
                                        echo "${name_ext:1}"
                                    else
                                        _st_exit "$1: parameter mastby: -d -ne -n2 -e -e2 -pr -po : return 1"
                                        return 1
                                    fi
                                fi
                            fi
                        fi
                    fi
                fi
            fi
        fi
    fi

}
