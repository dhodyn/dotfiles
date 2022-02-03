let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

call vimwiki#vars#init()

" add prefix <Leader>w to default mapping
nmap <Leader>w= <Plug>VimwikiAddHeaderLevel
nmap <Leader>w- <Plug>VimwikiRemoveHeaderLevel
nmap <Leader>w+ <Plug>VimwikiNormalizeLink
vmap <Leader>w+ <Plug>VimwikiNormalizeLinkVisual
nmap <Leader>w<C-Space> <Plug>VimwikiToggleListItem
nmap <Leader>wgnt <Plug>VimwikiNextTask
nmap <Leader>wgl<Space> <Plug>VimwikiRemoveSingleCB
nmap <Leader>wgL<Space> <Plug>VimwikiRemoveCBInList
nmap <Leader>wgln <Plug>VimwikiIncrementListItem
vmap <Leader>wgln <Plug>VimwikiIncrementListItem
nmap <Leader>wglp <Plug>VimwikiIncrementListItem
vmap <Leader>wglp <Plug>VimwikiIncrementListItem
nmap <Leader>wgll <Plug>VimwikiIncreaseLvlSingleItem
nmap <Leader>wgLl <Plug>VimwikiIncreaseLvlWholeItem
nmap <Leader>wglh <Plug>VimwikiDecreaseLvlSingleItem
nmap <Leader>wgLh <Plug>VimwikiDecreaseLvlWholeItem
nmap <Leader>wglr <Plug>VimwikiRenumberList
nmap <Leader>wgLr <Plug>VimwikiRenumberAllLists
nnoremap <Leader>wgl* :VimwikiChangeSymbolTo *<CR>
nnoremap <Leader>wgL* :VimwikiChangeSymbolInListTo *<CR>
nnoremap <Leader>wgl# :VimwikiChangeSymbolTo #<CR>
nnoremap <Leader>wgL# :VimwikiChangeSymbolInListTo #<CR>
nnoremap <Leader>wgl- :VimwikiChangeSymbolTo -<CR>
nnoremap <Leader>wgL- :VimwikiChangeSymbolInListTo -<CR>
nnoremap <Leader>wgl1 :VimwikiChangeSymbolTo 1.<CR>
nnoremap <Leader>wgL1 :VimwikiChangeSymbolInListTo 1.<CR>
nnoremap <Leader>wgla :VimwikiChangeSymbolTo a)<CR>
nnoremap <Leader>wgLa :VimwikiChangeSymbolInListTo a)<CR>
nnoremap <Leader>wglA :VimwikiChangeSymbolTo A)<CR>
nnoremap <Leader>wgLA :VimwikiChangeSymbolInListTo A)<CR>
nnoremap <Leader>wgli :VimwikiChangeSymbolTo i)<CR>
nnoremap <Leader>wgLi :VimwikiChangeSymbolInListTo i)<CR>
nnoremap <Leader>wglI :VimwikiChangeSymbolTo I)<CR>
nnoremap <Leader>wgLI :VimwikiChangeSymbolInListTo I)<CR>
nmap <Leader>wglx <Plug>VimwikiToggleRejectedListItem
nmap <Leader>wgqq <Plug>VimwikiTableAlignQ
nmap <Leader>wgww <Plug>VimwikiTableAlignW
nmap <Leader>wgq1 <Plug>VimwikiTableAlignQ1
nmap <Leader>wgw1 <Plug>VimwikiTableAlignW1

nmap <Leader>wH <Plug>VimwikiTableMoveColumnLeft
nmap <Leader>wL <Plug>VimwikiTableMoveColumnRight
