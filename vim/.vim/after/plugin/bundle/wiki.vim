if &runtimepath !~ 'wiki.vim'
    finish
endif

let g:wiki_global_load = 0
let g:wiki_root = '~/wiki'

WikiReload

