if &t_Co > 2 || has("gui_running")
    if exists('$VIM_NO_TRUECOLOR')
        " disable true colors
        set notermguicolors
    endif

    colorscheme gruvbox

endif
