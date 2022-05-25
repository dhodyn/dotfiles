source /usr/share/fzf/shell/key-bindings.bash

export FZF_DEFAULT_COMMAND="fd --follow --exclude .git"
export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND}"
export FZF_ALT_C_COMMAND="fd --type d --follow --exclude .git"
