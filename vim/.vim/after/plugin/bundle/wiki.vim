if &runtimepath !~ 'wiki.vim'
    finish
endif

let g:wiki_root='~/wiki'
let g:wiki_toc_title='Table of Contents'
let g:wiki_link_creation = {
      \ 'md': {
      \   'link_type': 'md',
      \   'url_extension': '.md',
      \   'url_transform': { x ->
      \     substitute(tolower(x), '\s\+', '-', 'g') },
      \   'link_text': { url -> wiki#toc#get_page_title(url) },
      \ },
      \ 'org': {
      \   'link_type': 'org',
      \   'url_extension': '.org',
      \ },
      \ 'adoc': {
      \   'link_type': 'adoc_xref_bracket',
      \   'url_extension': '',
      \ },
      \ '_': {
      \   'link_type': 'wiki',
      \   'url_extension': '',
      \ },
      \}

