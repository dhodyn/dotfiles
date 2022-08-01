if &runtimepath !~ 'wiki.vim'
    finish
endif

let g:wiki_global_load = 0
let g:wiki_root = '~/wiki'
let g:wiki_index_name = 'index'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'
let g:wiki_target_type = 'md'

WikiReload

