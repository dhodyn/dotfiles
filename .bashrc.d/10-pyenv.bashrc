if [ -d $HOME/.pyenv/bin ]; then
    [[ ":$PATH:" != *":$HOME/.pyenv/bin:"* ]] && export PATH=$HOME/.pyenv/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
