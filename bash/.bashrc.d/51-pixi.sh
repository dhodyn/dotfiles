[[ ! $(command -v pixi) ]] && return

export PIXI_HOME="${HOME}/.local/share/pixi"

if [[ :$PATH: != *:"${PIXI_HOME}/bin":* ]]; then
    PATH="${PIXI_HOME}/bin:${PATH}"
fi
export PATH

eval "$(pixi completion --shell bash)"

for completion in ~/.pixi/completions/bash/*; do
    [[ -e "${completion}" ]] && . "${completion}"
done
