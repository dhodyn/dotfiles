# tmux.bashrc

# launch and attach to tmux session
if [[ -f /usr/bin/tmux && -z $TMUX ]]; then
    exec tmux attach-session
fi

