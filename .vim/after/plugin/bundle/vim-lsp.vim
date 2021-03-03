function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal tagfunc=lsp#tagfunc 

    nmap <buffer> <leader>ga <plug>(lsp-code-action)
    nmap <buffer> <leader>gl <plug>(lsp-code-lens)
    nmap <buffer> <leader>gn <plug>(lsp-declaration)
    nmap <buffer> <leader>gN <plug>(lsp-peek-declaration)
    nmap <buffer> <leader>gd <plug>(lsp-definition)
    nmap <buffer> <leader>gD <plug>(lsp-peek-definition)
    nmap <buffer> <leader>gs <plug>(lsp-document-symbol-search)
    nmap <buffer> <leader>gr <plug>(lsp-references)
    nmap <buffer> <leader>gR <plug>(lsp-rename)
    nmap <buffer> <leader>gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <leader>g= <plug>(lsp-document-format)
    nmap <buffer> <leader>gi <plug>(lsp-implementation)
    nmap <buffer> <leader>gI <plug>(lsp-peek-implementation)
    nmap <buffer> <leader>gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>gT <plug>(lsp-peek-type-definition)
    nmap <buffer> <leader>gx <plug>(lsp-document-diagnostics)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> <leader>gg <plug>(lsp-status)
    inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

endfunction

augroup lsp_install
    autocmd!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_preview_doubletap = [function('lsp#ui#vim#output#closepreview')]
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_diagnostics_highlights_enabled = 0
let g:lsp_diagnostics_signs_insert_mode_enabled = 0

if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
    let g:lsp_diagnostics_signs_error = {'text': '✗'}
    let g:lsp_diagnostics_signs_warning = {'text': '‼'}
    let g:lsp_diagnostics_signs_information = {'text': 'ℹ'}
    let g:lsp_diagnostics_signs_hint = {'text': '❯'}
endif
