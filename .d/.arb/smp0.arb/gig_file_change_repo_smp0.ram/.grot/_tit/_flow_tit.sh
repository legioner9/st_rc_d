#!/usr/bin/env bash

__gig_file_change_repo_tit_smp0_FLOW() {

    if ! command -v gig_file_change_repo_smp0 >/dev/null; then
        echo "TYPE_ERROR : gig_file_change_repo_smp0" >&2
        return 1
    fi

    filename=${ST_RC_D_PATH}/.d/.arb/smp0.arb/gig_file_change_repo_smp0.ram/.grot/_tit/_flow_tit.sh

    local PW=$(pwd)
    local idir="$(dirname ${filename})"

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    cd "${idir}" || {
        echo "${idir} not dir" >&2
        return 1
    }

    #?----------------------------------------------------
    #?-------------------------------------

    # : >res

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        echo "${PW} not dir" >&2
        return 1
    }

}

__gig_file_change_repo_tit_smp0_FLOW "$@"
