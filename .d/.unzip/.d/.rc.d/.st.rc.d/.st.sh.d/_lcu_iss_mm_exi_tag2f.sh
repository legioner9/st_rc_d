#!/bin/bash

_lcu_iss_mm_exi_tag2f() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local hint="hint->\$1 tag for grep_eximo \$2 dir with env_lcu \$3 num menu (num file.lst - lst dlcu)"
    local item=

    #* local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d

    local hie_file=${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${FNN}.hie

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} ::  where grep_eximo \$1 dir with env_lcu \$2 num menu (num file.lst - lst dlcu) \$3 tag as t1|t2&t3 (wo @) for grep_eximo
TAGS: 
\$1 dir with env_lcu
\$2 num menu (num file.lst - lst dlcu)
\$3 
    tag - (wo @) for grep_eximo
    @ - choice tag from alrtags
    # - interactive enter 
        'tag'
        'tag1|tag2' - grep_eximo tag1 OR tag2 
        'tag1&tag2' - grep_eximo together tag1 AND tag2
[,\$4  
    if '_i' stdout debag info]
CNTL: 
    _e      : _edit body            : _edit file://${sh_file}
    _t      : _edit tst_dir         : _edit file://${tst_dir}
    _d      : exec tst_dir_fn       : . file://${tst_dir_file}
    _f1     : exec flow_dir_file_1  : . file://${flow_dir_file_1}
    _f1_e   : _edit flow_dir_file_1 : _edit file://${flow_dir_file_1}
    _hie_m  : more hie_file         : more file://${hie_file} 
    _hie_e  : _edit hie_file        : _edit file://${hie_file} 
    _data_e : _edit data_dir        : _edit file://${data_dir} 

RETU: 
EXAM: 
    ${FNN}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${sh_file}
        cd $PPWD
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${tst_dir}
        cd $PPWD
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${tst_dir_file}
        cd $PPWD
        return 0
    fi

    if [[ "_f1" == "$1" ]]; then
        . ${flow_dir_file_1}
        cd $PPWD
        return 0
    fi

    if [[ "_f1_e" == "$1" ]]; then
        _edit ${flow_dir_file_1}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_m" == "$1" ]]; then
        more ${hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_e" == "$1" ]]; then
        _edit ${hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_data_e" == "$1" ]]; then
        _edit ${data_dir}
        cd $PPWD
        return 0
    fi

    #? ----- START _lcu_iss_mm_exi_tag2f body -----

    # hint="\$1: \$2: "
    if _isn_from ${NARGS} 3 4 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '3|4' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    [ -d $ptr_path_1 ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$2) : 'file://$ptr_path_1' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    local num_menu=$2

    _isn_od $num_menu && {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_NUMBER (\$3) : '$num_menu' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    local di=

    if [ -n "$4" ]; then
        if [ "$4" == "_i" ]; then
            di=1
        else
            di=0
        fi
    else
        di=0
    fi

    [ $di -eq 1 ] && echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    local tag_exi=${3}
    local env_dir=${ptr_path_1}

    [ $di -eq 1 ] && echo -e "${GREEN}\$env_dir = '$env_dir'${NORMAL}" #print variable

    local file_lst=''

    _d2mm $env_dir file_lst $num_menu >/dev/null

    [ $di -eq 1 ] && echo -e "${GREEN}\$file_lst = 'file://$file_lst'${NORMAL}" #print variable

    # echo -e "${HLIGHT}--- _lculdr_tags2ue ${env_dir} ${num_menu} ---${NORMAL}" #start files

    # _lculdr_tags2ue ${env_dir} ${num_menu}

    local env_tag_arr=($(_lculdr_tags2ue ${env_dir} ${num_menu}))

    [ $di -eq 1 ] && echo -e "${GREEN}\${env_tag_arr[@]} = ${env_tag_arr[*]}${NORMAL}" #print variable

    #* choice tag from menu of alrtags
    if [ "$tag_exi" == "@" ]; then
        _st_info "choice tag from menu"
        local choice_tag=''

        _nr2mm env_tag_arr env_tag_arr choice_tag 0

        [ $di -eq 1 ] && echo -e "${GREEN}\$choice_tag = '$choice_tag'${NORMAL}" #print variable
        tag_exi=$choice_tag
    fi

    #* enter tag from read
    if [ "$tag_exi" == "#" ]; then
        _st_info "grep_eximo enter tag or 'tag1|tag2 tag3'"
        local enter_tag=''

        read -rp "grep_eximo enter tag or tag1|tag2&tag3: " enter_tag

        [ -z "${enter_tag}" ] && {
            _st_info "tag is EMPTY :: return 0"
            return 0
        }
        [ $di -eq 1 ] && echo -e "${GREEN}\$enter_tag = '$enter_tag'${NORMAL}" #print variable

        tag_exi=$enter_tag

    fi

    [ $di -eq 1 ] && _st_info "grep_eximo '${tag_exi}' in env file://$file_lst"

    local lcu_dir=
    local lcu_file=
    local tag_exi_arr=()
    local str_tags=
    local file_lst_d_file_name=
    local flag_do_md=0

    tag_exi_a=${tag_exi/&/ }

    tag_exi_arr=(${tag_exi_a})

    [ -d ${file_lst}.d ] || {
        mkdir ${file_lst}.d
    }

    file_lst_d_file_name=${tag_exi//&/AND}
    file_lst_d_file_name=${file_lst_d_file_name//|/OR}

    [ -d ${file_lst}.d/${file_lst_d_file_name}.d ] || {
        mkdir ${file_lst}.d/${file_lst_d_file_name}.d
    }

    [ -d ${file_lst}.d/${file_lst_d_file_name}.d/.cntx ] || {
        mkdir ${file_lst}.d/${file_lst_d_file_name}.d/.cntx
    }

    : >${file_lst}.d/${file_lst_d_file_name}.d/.cntx/000.lnk.man
    : >${file_lst}.d/${file_lst_d_file_name}.d/cntx.md

    __lcu_iss_mm_exi_tag2f_do_md() {
        echo
    }

    for lcu_dir in $(_f2e $file_lst); do
        for lcu_file in $(_dfr2e_lcu $lcu_dir lcu); do
            [ $di -eq 1 ] && echo -e "${HLIGHT}--- _lcu2e file://$lcu_file _tags ---${NORMAL}" #start files
            str_tags=$(_lcu2e $lcu_file _tags)
            [ $di -eq 1 ] && echo -e "${GREEN}\$str_tags = '$str_tags'${NORMAL}" #print variable

            _egrep "${tag_exi}" <<<"$str_tags" >/dev/null && {
                [ $di -eq 1 ] && echo -e "${GCZ0CM1_6}$tag_exi${NORMAL}"
                _lcu2e $lcu_file
                flag_do_md=1

                echo $(dirname $lcu_file) >>${file_lst}.d/${file_lst_d_file_name}.d/.cntx/000.lnk.man
                _s2f ${HOME} '${HOME}' ${file_lst}.d/${file_lst_d_file_name}.d/.cntx/000.lnk.man
            }
            # echo 1
        done

    done

    [ ${flag_do_md} -eq 1 ] && {
        ufl_stl0 9 \
        ${file_lst}.d/${file_lst_d_file_name}.d/.cntx \
        ${file_lst}.d/${file_lst_d_file_name}.d/cntx.md \
        2
    }

    [ ${flag_do_md} -eq 0 ] && {
        rm -rf ${file_lst}.d/${file_lst_d_file_name}.d
    }

    #* env_tag_arr alrtag
    #* local env_tag_arr=($(_lculdr_tags2ue ${env_dir} ${num_menu}))

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    #? ----- END _lcu_iss_mm_exi_tag2f body -----

    cd $PPWD
    return 0

}
