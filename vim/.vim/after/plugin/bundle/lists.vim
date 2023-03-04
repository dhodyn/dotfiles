if &runtimepath !~ 'lists.vim'
    finish
endif

augroup wiki_lists
    autocmd!
    autocmd FileType wiki ListsEnable
augroup END

let g:lists_maps_default_override = {
            \ 'i_<plug>(lists-new-element)': '',
            \ 'i_<plug>(lists-toggle)': '',
            \ '<plug>(lists-toggle)': '<leader>w<space>',
            \}
