#!/bin/bash

_abs_path() {

    if [ "-h" == "$1" ]; then
        echo -e "
MAIN: ${FUNCNAME} :: echo abs_path if \$1 PWD \$2 ptr to upath or @ instead empty \$2
TAGS:
\$1 \$(pwd)
\$2 upath or @ instead empty \$2

[, \$2]
"
        return 0
    fi

    if [[ -z "$2" ]]; then
        echo "_abs_path() : \$2 NOT_DEFINE , hint : '$3' : return 1" >&2
        return 1
    fi

    local dpwd="$1"

    if ! _is_root "${dpwd}"; then
        echo "_abs_path() : '${dpwd}' NOT_ROOT , hint : '$3' : return 1" >&2
        return 1
    fi

    eval local arg2=\${$2}

    if [ "@" == "$arg2" ]; then
        echo ${dpwd}
        return 0
    fi

    if [[ -z "$arg2" ]]; then
        echo "_abs_path() : \$\$2 => '\$$2' NOT_DEFINE , hint : '$3' : return 1" >&2
        return 1
    fi

    if _is_root "${arg2}"; then
        echo ${arg2}
    else
        echo ${dpwd}/${arg2}
    fi

}
