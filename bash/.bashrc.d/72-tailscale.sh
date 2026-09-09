[[ ! $(command -v tailscale) ]] && return

source <(tailscale completion bash)

