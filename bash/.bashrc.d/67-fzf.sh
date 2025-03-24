[[ ! $(command -v fzf) ]] && return

eval "$(fzf --bash)"

