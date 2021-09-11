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
    vnoremap <silent> <S-Del> "cx:call system('xclip -in', @c)<CR>
    vnoremap <silent> <leader>d "cx:call system('xclip -in', @c)<CR>
    vnoremap <silent> <leader>x "cx:call system('xclip -in', @c)<CR>
    
    " copy into system clipboard
    vnoremap <silent> <C-Insert> "cy:call system('xclip -in', @c)<CR>
    vnoremap <silent> <leader>y "cy:call system('xclip -in', @c)<CR>
    
    " paste from system clipboard
    map <silent> <S-Insert> :let @c=system('xclip -out')<CR>"cgP
    map <silent> <leader>P :let @c=system('xclip -out')<CR>"cgP
    map <silent> <leader>p :let @c=system('xclip -out')<CR>"cgp

endif

