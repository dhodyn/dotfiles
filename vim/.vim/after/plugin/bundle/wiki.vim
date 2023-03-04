if &runtimepath !~ 'wiki.vim'
    finish
endif

let g:wiki_root = '~/wiki'
let g:wiki_map_text_to_link = 'WikiTextToLink'
let g:wiki_tag_scan_num_lines = 'all'

function WikiTextToLink(text) abort
    return [substitute(tolower(a:text), '\s\+', '-', 'g'), a:text]
endfunction
