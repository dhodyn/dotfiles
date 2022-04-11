if &runtimepath !~ 'gruvbox.vim'
    finish
endif

if !exists('$VIM_NO_ITALICS')
    let g:gruvbox_italic=1
endif

