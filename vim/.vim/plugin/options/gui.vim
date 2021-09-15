" gui

if has("gui_running")
    " GUI font
    if has("unix") && !has("win32")
        set guifont=Hack\ 12
    elseif !("unix") && has("win32")
        set guifont=Consolas:h12:cANSI
    endif

    " GUI elements
    set guioptions=c

endif
