# starship

if ! (command -v starship); then
	return
fi

eval "$(starship init bash)"

function set_win_title(){
    echo -ne "\033]0; $USER@$(hostname)::${PWD/${HOME//\//\\/}/\~} \007"
}
starship_precmd_user_func="set_win_title"

