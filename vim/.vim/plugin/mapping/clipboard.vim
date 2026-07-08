if has("clipboard") && !exists('$SSH_CLIENT')
    vnoremap <S-Del> "+x
    vnoremap <leader>d "+x
    vnoremap <leader>x "+x

    vnoremap <C-Insert> "+y
    vnoremap <leader>y "+y

    map <S-Insert> "+gP
    map <leader>P "+gP
    map <leader>p "+gp

elseif $DISPLAY != '' && executable('xclip')
    vnoremap <silent> <S-Del> "cx:call system('xclip -in -selection clipboard', @c)<CR>
    vnoremap <silent> <leader>d "cx:call system('xclip -in -selection clipboard', @c)<CR>
    vnoremap <silent> <leader>x "cx:call system('xclip -in -selection clipboard', @c)<CR>

    vnoremap <silent> <C-Insert> "cy:call system('xclip -in -selection clipboard', @c)<CR>
    vnoremap <silent> <leader>y "cy:call system('xclip -in -selection clipboard', @c)<CR>

    map <silent> <S-Insert> :let @c=system('xclip -out -selection clipboard')<CR>"cgP
    map <silent> <leader>P :let @c=system('xclip -out -selection clipboard')<CR>"cgP
    map <silent> <leader>p :let @c=system('xclip -out -selection clipboard')<CR>"cgp

endif
