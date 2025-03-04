if &runtimepath !~ 'asyncomplete.vim'
    finish
endif

inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"
