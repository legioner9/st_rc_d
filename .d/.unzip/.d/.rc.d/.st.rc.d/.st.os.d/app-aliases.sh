#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/.os/.sh/app-aliases.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

unset filename

alias vim="gvim -v"
alias sky="flatpak run com.skype.Client"