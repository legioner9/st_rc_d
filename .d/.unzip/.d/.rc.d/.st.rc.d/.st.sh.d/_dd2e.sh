#!/bin/bash

_dd2e() {

    if [ "-h" == "$1" ]; then
        echo -e "
MAIN: ${FUNCNAME} :: like ls (uprev) (only dir) \$1 (@|path) @ if path='' [, \$2 .ext]
TAGS:
\$1 (@|path) @ if path=''
[, \$2 .ext]
CNTL: 
    _e : bady    : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_d2e.sh
    _t : tst_dir : _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_d2e.tst.d
EXAM: 
    ${FUNCNAME}
"
        return 0
    fi

    # if ! [[ -d "$1" ]]; then
    #     echo "in .d/.rc.d/.st.rc.d/.st.sh.d/_dd2e.sh _dd2e() : NOT_DIR : file://$1, hint : '$3 return 1" >&2
    #     return 1
    # fi

    if [[ -z "$1" ]]; then
        _st_exit "in _dd2e() : \$1 NOT_DEFINE : '$1', hint : '@ or path_to_dir' return 1"
        return 1
    fi

    local item

    if [[ "$1" == "@" ]]; then
        # ls

        for item in $(ls); do
            if [ -z "$2" ]; then
                if [ -d "$item" ] && [ "${item:0:1}" != "_" ]; then
                    echo "$item"
                fi
            else
                local _dd2e_ext
                _dd2e_ext=$(_prs_f -e "$item")
                if [ -d "$item" ] && [ "${item:0:1}" != "_" ] && [ "${_dd2e_ext}" == "$2" ]; then
                    echo "$item"
                fi
            fi
        done

    else

        ls $1 >/dev/null || {
            _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'ls $1 >/dev/null' : ${hint} : return 1"
            return 1
        }

        for item in $(ls "$1"); do
            if [ -z "$2" ]; then
                if [ -d "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    echo "$item"
                fi
            else
                local _dd2e_ext
                _dd2e_ext=$(_prs_f -e "$item")
                if [ -d "$1/$item" ] && [ "${item:0:1}" != "_" ] && [ "${_dd2e_ext}" == "$2" ]; then
                    echo "$item"
                fi
            fi
        done

    fi

}
