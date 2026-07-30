if [[ :$PATH: != *:"${HOME}/.opencode/bin":* ]]; then
    PATH="${HOME}/.opencode/bin:${PATH}"
fi
export PATH

[[ ! $(command -v opencode) ]] && return

eval "$(opencode completion)"
