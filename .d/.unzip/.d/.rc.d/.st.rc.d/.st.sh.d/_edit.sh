#!/bin/bash

_edit() {

    echo -e "${CYAN}--- start : ${FUNCNAME}() $@ ---${NORMAL}" #sistem info mesage

    if [ "-h" == "$1" ]; then
        echo -e "
MAIN: ${FUNCNAME} :: 
TAGS:
\$1 
[, \$2]
"
        return 0
    fi

    local PPWD=$(pwd)
    local ptr_path

    if [[ -n "$1" ]]; then
        echo -e "${ULINE}THIS_ARG1=$1${NORMAL}" #repit commands
        ptr_path="$1"
    else
        echo -e "${ULINE}THIS_ARG1=$PPWD${NORMAL}" #repit commands
        ptr_path="$PPWD"
    fi

    ptr_path=$(_abs_path $PPWD "ptr_path") #ptr args

    # if type "codium"; then
    #     echo -e "${ULINE} codium $ptr_path${NORMAL}" #repit commands
    #     codium $2 "$ptr_path"0

    # elif type "code"; then
    #     echo -e "${ULINE} code $ptr_path${NORMAL}" #repit commands
    #     code $2 "$ptr_path"

    # elif type "nnn"; then
    #     echo -e "${ULINE} code $ptr_path${NORMAL}" #repit commands
    #     nnn $2 "$ptr_path"

    # elif type "mc"; then
    #     echo -e "${ULINE} code $ptr_path${NORMAL}" #repit commands
    #     mc $2 "$ptr_path"

    [ -e $ptr_path ] || {
        _st_err "in fs= file:///${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_edit.sh , line=${LINENO}, EXEC: _edit $@ : NOT_ENTETY : 'file://$ptr_path' : return 1"
        cd $PPWD
        return 1
    }

    if type "codium"; then
        echo -e "${ULINE} codium $ptr_path${NORMAL}" #repit commands
        codium $2 "$ptr_path"

    elif type "code"; then
        echo -e "${ULINE} code $ptr_path${NORMAL}" #repit commands
        code $2 "$ptr_path"

    elif type "gvim" && type "mate-terminal" && [ -f $ptr_path ]; then
        echo -e "${ULINE}mate-terminal -- sh -c gvim -v +$2 $ptr_path${NORMAL}" #repit commands
        mate-terminal -- sh -c "gvim -v +$2 $ptr_path"

    elif type "mc" && type "mate-terminal" && [ -f $ptr_path ]; then
        echo -e "${ULINE}mate-terminal -- sh -c mc -e $ptr_path${NORMAL}" #repit commands
        mate-terminal -- sh -c "mc -e $ptr_path"

    elif type "mc" && type "mate-terminal" && [ -d $ptr_path ]; then
        echo -e "${ULINE}mate-terminal -- sh -c mc $ptr_path${NORMAL}" #repit commands
        mate-terminal -- sh -c "mc $ptr_path"

    elif type "vim"; then
        echo -e "${ULINE}vim $ptr_path${NORMAL}" #repit commands
        vim "$ptr_path"

    else
        echo "editors: codium, gvim, vim, mc not enabled" >&2
    fi

}
