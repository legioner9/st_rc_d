#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/yt_dlp_stl0.ram/.grot/yt_dlp_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

yt_dlp_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/yt_dlp_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/yt_dlp_stl0.ram/.grot/yt_dlp_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/yt_dlp_stl0.ram/.grot/yt_dlp_stl0.sh)

    echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: \$1 0 or num_lst_in_dir for down yt_dlp to \$PPWD
TAGS:
ARGS: 
\$1 0 or num_lst_in_dir for down yt_dlp to \$PPWD
[ ,\$2 num_menu ]
CNTL: 
    _go     : _edit ${d_name}/${FNN}.sh
    _tst    : . ${d_name}/_tst/exec.tst
    _flow_1 : . ${d_name}/_tst/_flow_tst.sh.v1
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
EXAM:
    ${FNN} 
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}

    if [[ "_go" == "$1" ]]; then
        _edit "${d_name}/${FNN}".sh
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/exec.tst ]]; then
            . ${d_name}/_tst/exec.tst
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    if [[ "_flow_1" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/_flow_tst.sh.v1 ]]; then
            . ${d_name}/_tst/_flow_tst.sh.v1
            return 0
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/_flow_tst.sh.v1' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    hint="\$1: 0 or num_lst_in_dir"
    if _isn_from ${NARGS} 1 1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

    local dir_list=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/yt_dlp_stl0/.lst

    _arr_name=($(_df2e ${dir_list}))
    _result=

    _nr2mm _arr_name _arr_name _result "$1" >/dev/null
    echo -e "${GREEN}\$_result = $_result${NORMAL}" #print variable

    local file_list=${dir_list}/${_result}

    _f2e ${file_list}
    echo

    _is_yes "DownLoad that list to file://$PPWD ?" || {
        _st_info "NOT 'y' - return 0"
        return 0
    }

    local item=

    for item in $(_f2e ${file_list}); do

        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # yt-dlp -c "https://www.youtube.com/watch?v=tJwDiAPqSw0&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=$num&pp=iAQB"

        # echo -e "${HLIGHT}--- yt-dlp -c https://www.youtube.com/watch?v=AQTHyG-KM7U&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=19 ---${NORMAL}" #start files
        # "wv*+wa/w"
        # '(bv*[ext=mp4][height<=720]+ba*[ext=m4a])[protocol^=http]'
        # 'worstvideo[vcodec^=avc1]+worstaudio[acodec^=mp4a]'

        # until yt-dlp -c -f worstvideo+worstaudio ${str_0}/${item}; do
        echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable
        echo -e "${HLIGHT}--- until yt-dlp -c -f '(bv*[ext=mp4][height<=320]+ba*[ext=m4a])[protocol^=http]' ${item} ---${NORMAL}" #start files
        until yt-dlp -c -f '(bv*[ext=mp4][height<=320]+ba*[ext=m4a])[protocol^=http]' "${item}"; do
            :
        done

    done

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
