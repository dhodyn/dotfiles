# miniconda3

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/var/home/dhody/.var/toolbox/test/miniconda3/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/var/home/dhody/.var/toolbox/test/miniconda3/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/var/home/dhody/.var/toolbox/test/miniconda3/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/var/home/dhody/.var/toolbox/test/miniconda3/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
