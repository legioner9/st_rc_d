# <embed> standart repo

[up to parent doc](../../../../README.md)

## ${HOME}/.d
- main dir STRC managment

## ${HOME}/.d/.rc.d
- dir for STRC run control

## ${HOME}/.d/.rc.d/.st.rc.d
- main dir STRCLIB
    - .st.ax.d - dir (.ax mean not delete file only add or edit) with file for permanent use
    - .st.config.d - defining STRCLIB behaviour (constants and CNTL files)
    - .st.d - with files for using STRCLIB fns
        - .lst - lists for using STRCLIB fns
            - \<name_STRCLIB_fn> - dir for using \<name_STRCLIB_fn>
                - \<file>.lst
        - .tml - templates 
        - .mul - mix set (lst, tml ...) for using STRCLIB fns
            - \<name_STRCLIB_fn> - dir for using \<name_STRCLIB_fn>
    - .st.sh.d - dir with fn files
    - 
## ${HOME}/.d/.rc.d
## ${HOME}/.d/.rc.d
## ${HOME}/.d/.path.d
- dir for files with path to using STRC gitrepo
    - \<REPO_DIR>.path - path to \<REPO_DIR> gitdir
## ${HOME}/.d/.lst.d
- dir for files with list to using STRCLIB function
    - .st.lst - lst with path to entry point

/.rc.d/.st_rc_d.rc

## [REPO_DIR]/.d
- main dir repo managment

## [REPO_DIR]/.d/.ham
- git hooks for API nm_opi_() from plt repo
    - main 
        - main.ham - exec process before any git acton
        - main.fn.lst.d
            - files to be launched main.ham
    - ham 
        - before_add_file_.ham - hook exec before (git add . ) in nm_opi_()
        - after_add_file_.ham - hook exec after (git add . ) in nm_opi_()
        - before_push_.ham - hook exec before (git push) in nm_opi_()
        - after_push_.ham - hook exec after (git push) in nm_opi_()
        - before_pull_.ham - hook exec before (git pull) in nm_opi_()
        - after_pull_.ham - hook exec after (git pull) in nm_opi_()

## [REPO_DIR]/.d/.config
- defining repo behaviour (constants and CNTL files)
    - env.sh - lifts repo constants into memory

## [REPO_DIR]/.d/.repo.d
- to access the repo from outside
    - .repo.dpl - for deploy repo in host system
    - .repo.rc - repo proccess launch point
        

## [REPO_DIR]/.d/.md.ax
- README.md.d
    - contane page.md ancors for [REPO_DIR]/README.md

[up to README.md](../../../../README.md)