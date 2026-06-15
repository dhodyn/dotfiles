[[ ! $(command -v conda) ]] && return

[[ -z "${CONDA_DEFAULT_ENV}" ]] && conda activate devel

