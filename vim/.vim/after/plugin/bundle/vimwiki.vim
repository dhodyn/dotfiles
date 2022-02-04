let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_key_mappings =
  \ {
  \   'all_maps': 1,
  \   'global': 1,
  \   'headers': 0,
  \   'text_objs': 1,
  \   'table_format': 0,
  \   'table_mappings': 1,
  \   'lists': 0,
  \   'links': 0,
  \   'html': 0,
  \   'mouse': 0,
  \ }

call vimwiki#vars#init()

augroup vimwiki_local_mappings
    autocmd!
    " headers
    autocmd FileType vimwiki,vimwiki_media,vimwiki_default,vimwiki_markdown,vimwiki_markdown_custom
    \ nmap <silent><buffer> <leader>w= <Plug>VimwikiAddHeaderLevel
    \|nmap <silent><buffer> <leader>w- <Plug>VimwikiRemoveHeaderLevel
    \|nmap <silent><buffer> [[ <Plug>VimwikiGoToPrevHeader
    \|nmap <silent><buffer> ]] <Plug>VimwikiGoToNextHeader
    \|nmap <silent><buffer> [= <Plug>VimwikiGoToPrevSiblingHeader
    \|nmap <silent><buffer> ]= <Plug>VimwikiGoToNextSiblingHeader
    \|nmap <silent><buffer> [u <Plug>VimwikiGoToParentHeader
    \|nmap <silent><buffer> ]u <Plug>VimwikiGoToParentHeader

    " table_format
    autocmd FileType vimwiki,vimwiki_media,vimwiki_default,vimwiki_markdown,vimwiki_markdown_custom
    \ nmap <silent><buffer> <leader>wgqq <Plug>VimwikiTableAlignQ
    \|nmap <silent><buffer> <leader>wgww <Plug>VimwikiTableAlignW
    \|nmap <silent><buffer> <leader>wgq1 <Plug>VimwikiTableAlignQ1
    \|nmap <silent><buffer> <leader>wgw1 <Plug>VimwikiTableAlignW1
    \|nmap <silent><buffer> <leader>wH <Plug>VimwikiTableMoveColumnLeft
    \|nmap <silent><buffer> <leader>wL <Plug>VimwikiTableMoveColumnRight

    " lists
    autocmd FileType vimwiki,vimwiki_media,vimwiki_default,vimwiki_markdown,vimwiki_markdown_custom
    \ nmap <silent><buffer> <leader>wtl <Plug>VimwikiToggleListItem
    \|nmap <silent><buffer> <leader>wgnt <Plug>VimwikiNextTask
    \|nmap <silent><buffer> <leader>wgl<Space> <Plug>VimwikiRemoveSingleCB
    \|nmap <silent><buffer> <leader>wgL<Space> <Plug>VimwikiRemoveCBInList
    \|nmap <silent><buffer> <leader>wgln <Plug>VimwikiIncrementListItem
    \|vmap <silent><buffer> <leader>wgln <Plug>VimwikiIncrementListItem
    \|nmap <silent><buffer> <leader>wglp <Plug>VimwikiDecrementListItem
    \|vmap <silent><buffer> <leader>wglp <Plug>VimwikiDecrementListItem
    \|nmap <silent><buffer> <leader>wgll <Plug>VimwikiIncreaseLvlSingleItem
    \|nmap <silent><buffer> <leader>wgLl <Plug>VimwikiIncreaseLvlWholeItem
    \|nmap <silent><buffer> <leader>wgLL <Plug>VimwikiIncreaseLvlWholeItem
    \|nmap <silent><buffer> <leader>wglh <Plug>VimwikiDecreaseLvlSingleItem
    \|nmap <silent><buffer> <leader>wgLh <Plug>VimwikiDecreaseLvlWholeItem
    \|nmap <silent><buffer> <leader>wgLH <Plug>VimwikiDecreaseLvlWholeItem
    \|nmap <silent><buffer> <leader>wglr <Plug>VimwikiRenumberList
    \|nmap <silent><buffer> <leader>wgLr <Plug>VimwikiRenumberAllLists
    \|nmap <silent><buffer> <leader>wgLR <Plug>VimwikiRenumberAllLists
    \|nnoremap <silent><buffer> <leader>wgl* :VimwikiChangeSymbolTo *<CR>
    \|nnoremap <silent><buffer> <leader>wgL* :VimwikiChangeSymbolInListTo *<CR>
    \|nnoremap <silent><buffer> <leader>wgl+ :VimwikiChangeSymbolTo +<CR>
    \|nnoremap <silent><buffer> <leader>wgL+ :VimwikiChangeSymbolInListTo +<CR>
    \|nnoremap <silent><buffer> <leader>wgl# :VimwikiChangeSymbolTo #<CR>
    \|nnoremap <silent><buffer> <leader>wgL# :VimwikiChangeSymbolInListTo #<CR>
    \|nnoremap <silent><buffer> <leader>wgl- :VimwikiChangeSymbolTo -<CR>
    \|nnoremap <silent><buffer> <leader>wgL- :VimwikiChangeSymbolInListTo -<CR>
    \|nnoremap <silent><buffer> <leader>wgl1 :VimwikiChangeSymbolTo 1.<CR>
    \|nnoremap <silent><buffer> <leader>wgL1 :VimwikiChangeSymbolInListTo 1.<CR>
    \|nnoremap <silent><buffer> <leader>wgla :VimwikiChangeSymbolTo a)<CR>
    \|nnoremap <silent><buffer> <leader>wgLa :VimwikiChangeSymbolInListTo a)<CR>
    \|nnoremap <silent><buffer> <leader>wglA :VimwikiChangeSymbolTo A)<CR>
    \|nnoremap <silent><buffer> <leader>wgLA :VimwikiChangeSymbolInListTo A)<CR>
    \|nnoremap <silent><buffer> <leader>wgli :VimwikiChangeSymbolTo i)<CR>
    \|nnoremap <silent><buffer> <leader>wgLi :VimwikiChangeSymbolInListTo i)<CR>
    \|nnoremap <silent><buffer> <leader>wglI :VimwikiChangeSymbolTo I)<CR>
    \|nnoremap <silent><buffer> <leader>wgLI :VimwikiChangeSymbolInListTo I)<CR>
    \|nmap <silent><buffer> <leader>wtx <Plug>VimwikiToggleRejectedListItem

    " links
    autocmd FileType vimwiki,vimwiki_media,vimwiki_default,vimwiki_markdown,vimwiki_markdown_custom
    \ nmap <silent><buffer> <leader>w<leader>i <Plug>VimwikiDiaryGenerateLinks
    \|nmap <silent><buffer> <CR> <Plug>VimwikiFollowLink
    \|nmap <silent><buffer> <S-CR> <Plug>VimwikiSplitLink
    \|nmap <silent><buffer> <C-CR> <Plug>VimwikiVSplitLink
    \|nmap <silent><buffer> <C-S-CR> <Plug>VimwikiTabnewLink
    \|nmap <silent><buffer> <D-CR> <Plug>VimwikiTabnewLink
    \|nmap <silent><buffer> <Backspace> <Plug>VimwikiGoBackLink
    \|nmap <silent><buffer> <Tab> <Plug>VimwikiNextLink
    \|nmap <silent><buffer> <S-Tab> <Plug>VimwikiPrevLink
    \|nmap <silent><buffer> <leader>w+ <Plug>VimwikiNormalizeLink
    \|vmap <silent><buffer> <leader>w+ <Plug>VimwikiNormalizeLinkVisual
    \|nmap <silent><buffer> <leader>wd <Plug>VimwikiDeleteFile
    \|nmap <silent><buffer> <leader>wr <Plug>VimwikiRenameFile
    \|nmap <silent><buffer> <C-Up> <Plug>VimwikiDiaryPrevDay
    \|nmap <silent><buffer> <C-Down> <Plug>VimwikiDiaryNextDay

augroup END

