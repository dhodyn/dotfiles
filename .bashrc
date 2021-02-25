# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# return if not interactive shell
if [[ $- != *i* ]]; then return; fi

if [ -d ~/.bashrc.d ]; then
   for file in ~/.bashrc.d/*.bashrc; do
       . $file
   done
fi

if [ -d ~/.bash_completion.d ]; then
   for file in ~/.bash_completion.d/*.bash; do
       . $file
   done
fi

eval "$(starship init bash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/var/home/dhody/.var/toolbox/fedora-toolbox-33/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/var/home/dhody/.var/toolbox/fedora-toolbox-33/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/var/home/dhody/.var/toolbox/fedora-toolbox-33/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/var/home/dhody/.var/toolbox/fedora-toolbox-33/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

