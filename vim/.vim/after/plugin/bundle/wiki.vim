if &runtimepath !~ 'wiki.vim'
    finish
endif

let g:wiki_root='~/wiki'
let g:wiki_tag_scan_num_lines='all'
let g:wiki_write_on_nav=1
let g:wiki_toc_title='Table of Contents'
let g:wiki_mappings_local={
            \ '<plug>(wiki-fzf-pages)': '<leader>wo',
            \}

augroup wiki
    autocmd!
    autocmd FileType wiki WikiEnable
    autocmd FileType wiki setlocal foldlevel=99
    autocmd FileType wiki setlocal spell
augroup END

