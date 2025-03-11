[[ ! -f /home/linuxbrew/.linuxbrew/bin/brew ]] && return

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export HOMEBREW_BUNDLE_FILE="${XDG_CONFIG_HOME-$HOME/.config}/homebrew-bundle/Brewfile"

