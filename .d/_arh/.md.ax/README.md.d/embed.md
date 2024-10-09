# <embed> Развертывание

[up to parent doc](../../../README.md)

## <path_to_repo>, <you_github_acc_name> replace real data

## fast deploy (only strclib)
    $ wget -P ${HOME} https://github.com/legioner9/st_rc_d/raw/master/.d/.zip/.st.rc.d.zip
    $ wget -P ${HOME} https://github.com/legioner9/st_rc_d/raw/master/.d/.zip/.st_rc_d.rc.zip
    $ cd ${HOME}
    $ unzip .st.rc.d.zip
    $ unzip .st_rc_d.rc.zip
### add string "if [[ -f ~/.st.rc.d/.st.rc ]]; then . ~/.st.rc.d/.st.rc >/dev/null; fi" to .bashrc
    $ if ! grep -F 'if [[ -f ~/.st.rc.d/.st.rc ]]; then . ~/.st.rc.d/.st.rc >/dev/null; fi' <~/.bashrc; then echo 'if [[ -f ~/.st.rc.d/.st.rc ]]; then . ~/.st.rc.d/.st.rc >/dev/null; fi' >>~/.bashrc; fi

## deploy allow bcp-dpl strclib to YOU fork https://github.com/legioner9/st_rc_d

    $ cd <path_to_repo>
    $ git clone https://github.com/<you_github_acc_name>/st_rc_d
    $ cp <path_to_repo>/st_rc_d/.d/.zip/.st.rc.d.zip ${HOME}
    $ cp <path_to_repo>/st_rc_d/.d/.zip/.st_rc_d.rc.zip ${HOME}
    $ cd ${HOME}
    $ unzip .st.rc.d.zip
    $ unzip .st_rc_d.rc.zip
    $ echo "ST_RC_D_PATH=<path_to_repo>/st_rc_d" > ${HOME}/.st_rc_d.path

### add string "if [[ -f ~/.st.rc.d/.st.rc ]]; then . ~/.st.rc.d/.st.rc >/dev/null; fi" to .bashrc
    $ if ! grep -F 'if [[ -f ~/.st.rc.d/.st.rc ]]; then . ~/.st.rc.d/.st.rc >/dev/null; fi' <~/.bashrc; then echo 'if [[ -f ~/.st.rc.d/.st.rc ]]; then . ~/.st.rc.d/.st.rc >/dev/null; fi' >>~/.bashrc; fi

#### dpl strclib from <path_to_repo>/st_rc_d/.d/.zip/:
    $ bash
    $ _dpl_strd
#### bcp strclib to <path_to_repo>/st_rc_d/.d/.zip/:
    $ bash
    $ _dpl_strd

[up to README.md](../../../README.md)
