[[ ! $(command -v kubectl) ]] && return

. <(kubectl completion bash)

