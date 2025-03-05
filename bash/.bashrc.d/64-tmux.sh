[[ ! $(command -v tmux) ]] && return

if [[ -z ${TMUX} ]]; then
    exec tmux attach-session
fi

export TMUX_SCREEN_TERM=0
export TMUX_NO_TRUECOLOR=0
export TMUX_X11_FORWARD=0

