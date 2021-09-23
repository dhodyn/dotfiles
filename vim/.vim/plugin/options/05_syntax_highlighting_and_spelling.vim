" 5 syntax, highlight, and spelling

if &t_Co > 2 || has("gui_running")
    " the background color brightness
    set background=dark

    " syntax highlighting
    syntax enable

    " highlighting strings inside C comments.
    let c_comment_strings=1

    " highlight all matches for the last used pattern
    set hlsearch

    " use GUI colors for the terminal
    set termguicolors

endif

" highlight spelling mistakes
set nospell

