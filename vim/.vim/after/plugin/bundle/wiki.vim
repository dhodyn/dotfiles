if &runtimepath !~ 'wiki.vim'
    finish
endif

let g:wiki_root='~/wiki'
let g:wiki_filetypes = ['wiki']
let g:wiki_toc_title='Table of Contents'

augroup wiki
    autocmd!
    autocmd FileType wiki WikiEnable
    autocmd FileType wiki setlocal foldlevel=99
    autocmd FileType wiki setlocal wrap
augroup END

