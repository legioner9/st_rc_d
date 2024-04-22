# <embed> standart repo

[up to parent doc](../../../../README.md)

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

## [REPO_DIR]/.d/.md.ax/README.md.d
- contane page.md ancors for [REPO_DIR]/README.md

## [REPO_DIR]/.d/.config
- defining repo behaviour
    - env.sh - lifts repo constants into memory

sh up to memory CONST define in this repo

## [REPO_DIR]/.d/.repo.d
- to access the repo from outside
    - .repo.dpl - for deploy repo in host system
    - .repo.rc - repo proccess launch point
        -  



## [REPO_DIR]/.d/.repo.d/.repo.rc

sh file entre point for run repo 

[up to README.md](../../../../README.md)