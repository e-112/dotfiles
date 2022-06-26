#!/usr/bin/env bash

log()
{
    echo "${@}" 1>&2
}

dot_link_home()
{
    local SRC="$(pwd)/${1}"
    local DEST="${HOME}/.${1}"

    if [[ -f ${DEST} ]] 
    then
        log "Skip configuration for ${SRC}. Destination already exists: ${DEST}"
        return 1
    fi

    ln -sf "${SRC}" "${DEST}"
}

install()
{
    dot_link_home vimrc
    dot_link_home vim
    dot_link_home tmux.conf
}

install
