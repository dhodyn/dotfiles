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

