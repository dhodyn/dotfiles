if &runtimepath !~ 'vim-dirvish'
    finish
endif

command! -nargs=? -complete=dir Explore Dirvish <args>
command! -nargs=? -complete=dir Sexplore belowright split | silent Dirvish <args>
command! -nargs=? -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>

augroup dirvish_config
    autocmd!
    " open in a new tab
    autocmd FileType dirvish
    \  nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
    \ |xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>

    " hide dot-prefixed files
    autocmd FileType dirvish nnoremap <silent><buffer>
    \ <leader>h :silent keeppatterns g@\v/\.[^\/]+/?$@d _<CR>:setl cole=3<CR>
augroup END

