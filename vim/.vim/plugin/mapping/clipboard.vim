if has("clipboard") && !exists('$SSH_CLIENT')
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

elseif $DISPLAY != '' && executable('xclip')
    " X11 clipboard via xclip
    let s:xterm = $X11_EXCEED_SERVER == '1' ? '; xterm -e true' : ''

    vnoremap <silent> <S-Del> "cx:call system('xclip -in -selection clipboard' . s:xterm, @c)<CR>
    vnoremap <silent> <leader>d "cx:call system('xclip -in -selection clipboard' . s:xterm, @c)<CR>
    vnoremap <silent> <leader>x "cx:call system('xclip -in -selection clipboard' . s:xterm, @c)<CR>

    vnoremap <silent> <C-Insert> "cy:call system('xclip -in -selection clipboard' . s:xterm, @c)<CR>
    vnoremap <silent> <leader>y "cy:call system('xclip -in -selection clipboard' . s:xterm, @c)<CR>

    map <silent> <S-Insert> :let @c=trim(system('xclip -out -selection clipboard' . s:xterm))<CR>"cgP
    map <silent> <leader>P :let @c=trim(system('xclip -out -selection clipboard' . s:xterm))<CR>"cgP
    map <silent> <leader>p :let @c=trim(system('xclip -out -selection clipboard' . s:xterm))<CR>"cgp

endif
