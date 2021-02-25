# Set prompt and title (for interactive shells only)
if [[ $- != *i* ]]; then return; fi

PS1="\$("

PS1+="\
EXIT=\"\$?\" ; \
BLUE=\"\[\e[38;5;39m\]\" ; \
RED=\"\[\e[38;5;1m\]\" ; \
PURPLE=\"\[\e[38;5;5m\]\" ; \
ORANGE=\"\[\e[38;5;208m\]\" ; \
RESET=\"\[\e[0m\]\" ; "

PS1+="\
if [[ \"\$TOOLBOX_PATH\" ]]; then \
    toolbox=\"\${PURPLE}⬢ \${RESET}\" ; \
fi ; "

PS1+="\
username=\"\${BLUE}\u\${RESET}\" ; \
if [[ \"\$UID\" = \"0\" ]]; then \
    username=\"\${RED}\u\${RESET}\" ; \
fi ; "

PS1+="\
endchar=\"\\$\" ; \
if [[ \"\$EXIT\" == 0 ]]; then \
    endchar=\"\${RESET}\$endchar\${RESET}\" ; \
else \
    endchar=\"\${RED}\$endchar\${RESET}\"
fi ; "

PS1+="\
host=\"\${ORANGE}\H\${RESET}\" ; "

PS1+="\
dir=\"\${BLUE}\w\${RESET}\" ; "

PS1+="\
if [[ \"\$UID\" != \"0\" ]]; then \
    GIT_PS1_SHOWDIRTYSTATE=1 \
    GIT_PS1_SHOWSTASHSTATE=1 \
    GIT_PS1_SHOWUNTRACKEDFILES=1 \
    git=\"\${RESET}\$(__git_ps1 \" (%s)\")\${RESET}\" ; \
fi ; "

PS1+="echo \""
if [[ "${TERM:0:5}" = "xterm" || "${TERM:0:4}" = "tmux" ]]; then
    PS1+="\[\e]2;\u@\H :: \w\a\]\${toolbox}\${username}@\${host}:\${dir}\${git} \${endchar} "
else
    PS1+="\${toolbox}\${username}@\${host}:\${dir}\${git} \${endchar} "
fi
PS1+="\""

PS1+=")"

export PS1

