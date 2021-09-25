if has("clipboard")
    " cut into system clipboard
    vnoremap <S-Del> "+x
    vnoremap <leader>d "+x
    vnoremap <leader>x "+x
    
    " copy into system clipboard
    vnoremap <C-Insert> "+y
    vnoremap <leader>y "+y
    
    " paste from system clipboard
    map <S-Insert> "+gP
    map <leader>P "+gP
    map <leader>p "+gp

else
    " cut into system clipboard
    if exists('$VIM_X11_FORWARD')
        vnoremap <silent> <S-Del> "cx:call system('xclip -in; xterm -e true', @c)<CR>
        vnoremap <silent> <leader>d "cx:call system('xclip -in; xterm -e true', @c)<CR>
        vnoremap <silent> <leader>x "cx:call system('xclip -in; xterm -e true', @c)<CR>
    else
        vnoremap <silent> <S-Del> "cx:call system('xclip -in', @c)<CR>
        vnoremap <silent> <leader>d "cx:call system('xclip -in', @c)<CR>
        vnoremap <silent> <leader>x "cx:call system('xclip -in', @c)<CR>
    endif
    
    " copy into system clipboard
    if exists('$VIM_X11_FORWARD')
        vnoremap <silent> <C-Insert> "cy:call system('xclip -in; xterm -e true', @c)<CR>
        vnoremap <silent> <leader>y "cy:call system('xclip -in; xterm -e true', @c)<CR>
    else
        vnoremap <silent> <C-Insert> "cy:call system('xclip -in', @c)<CR>
        vnoremap <silent> <leader>y "cy:call system('xclip -in', @c)<CR>
    endif
    
    " paste from system clipboard
    if exists('$VIM_X11_FORWARD')
        map <silent> <S-Insert> :let @c=system('xclip -out; xterm -e true')<CR>"cgP
        map <silent> <leader>P :let @c=system('xclip -out; xterm -e true')<CR>"cgP
        map <silent> <leader>p :let @c=system('xclip -out; xterm -e true')<CR>"cgp
    else
        map <silent> <S-Insert> :let @c=system('xclip -out')<CR>"cgP
        map <silent> <leader>P :let @c=system('xclip -out')<CR>"cgP
        map <silent> <leader>p :let @c=system('xclip -out')<CR>"cgp
    endif

endif

