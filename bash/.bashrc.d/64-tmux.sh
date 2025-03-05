[[ ! $(command -v tmux) ]] && return

if [[ -z ${TMUX} ]]; then
    exec tmux attach-session
fi

