#!/bin/bash

path_arb=${HOME}/PATH_TO_ARB

if ! _is_yes "cr $1 like 012_name ram in ${path_arb}"; then
    return 0
fi

if [[ -z "$1" ]]; then
    _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : EMPTY : '\$1' : hint=\$1 like 012_name ram in ${path_arb} : return 1"
    return 1
fi

_sd2d _XXX $1 ${path_arb}/_XXX.ram
