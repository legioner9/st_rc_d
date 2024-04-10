# <note> Заметки

[up to parent doc](../../../README.md)

## example for repo st_rc_d
- <name_repo> = st_rc_d
- <NAME_REPO> = ST_RC_D

- mast be stored ${HOME}/.<name_repo>.rc
- just be touched ${HOME}/.<name_repo>.path

```bash
    cat ${HOME}/.<name_repo>.rc

        touch ${HOME}/.<name_repo>.path

        eval "<NAME_REPO>_PATH=$(cat ${HOME}/.<name_repo>.path)"

        if [[ -f ${<NAME_REPO>_PATH}/.reporc ]]; then
            if ! . ${<NAME_REPO>_PATH}/.reporc; then
                echo "in fs=file://${HOME}/.<name_repo>.rc , line=${LINENO} : : EXEC_FAIL : '. file://${<NAME_REPO>_PATH}/.reporc' : return 1" >&2
                return 1
            fi
        else
            echo "in fs=file://${HOME}/.<name_repo>.rc , line=${LINENO} : : NOT_FILE : 'file://${<NAME_REPO>_PATH}/.reporc' : return 1" >&2
            return 1
        fi

    cat ${HOME}/.<name_repo>.path
        ${HOME}/path_to_repo_dir/<name_repo>

    cat ${HOME}/path_to_repo_dir/<name_repo>/.reporc

        file=${<NAME_REPO>_PATH}/.d/.config/env.sh
        if [[ -f ${file} ]]; then
            if ! . ${file}; then
                echo "in fs=file://${<NAME_REPO>_PATH}/.reporc , line=${LINENO} : : EXEC_FAIL : '. file://${file}' : ${hint} : return 1" >&2
                return 1
            fi
        else
            echo "in fs=file://${<NAME_REPO>_PATH}/.reporc , line=${LINENO}: : NOT_FILE : 'file://${file}' : ${hint} : return 1" >&2
            return 1
        fi

```

## bcp-dpl
### from strclib:
    _bcp_strc
    _dpl_strc
### from pltlib:
    bcp_strs_ -_bcp
    bcp_strs_ -_dpl

[up to README.md](../../../README.md)