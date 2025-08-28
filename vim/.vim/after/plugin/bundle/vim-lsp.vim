if &runtimepath !~ 'vim-lsp'
    finish
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal tagfunc=lsp#tagfunc 
    setlocal signcolumn=yes

    nmap <buffer> gra <plug>(lsp-code-action)
    " nmap <buffer> <leader>gl <plug>(lsp-code-lens)
    " nmap <buffer> <leader>gn <plug>(lsp-declaration)
    " nmap <buffer> <leader>gN <plug>(lsp-peek-declaration)
    nmap <buffer> gd <plug>(lsp-definition)
    " nmap <buffer> <leader>gD <plug>(lsp-peek-definition)
    nmap <buffer> grr <plug>(lsp-references)
    nmap <buffer> grn <plug>(lsp-rename)
    nmap <buffer> gO <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> gK <plug>(lsp-signature-help)
    imap <buffer> <C-K> <C-o><plug>(lsp-signature-help)
    " nmap <buffer> <leader>g= <plug>(lsp-document-format)
    nmap <buffer> gri <plug>(lsp-implementation)
    " nmap <buffer> <leader>gI <plug>(lsp-peek-implementation)
    " nmap <buffer> <leader>gt <plug>(lsp-type-definition)
    " nmap <buffer> <leader>gT <plug>(lsp-peek-type-definition)
    nmap <buffer> grq <plug>(lsp-document-diagnostics)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> grg <plug>(lsp-status)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    augroup on_lsp_float_opened
        autocmd!
        autocmd User lsp_float_opened nmap <buffer> <silent> <C-c> <plug>(lsp-preview-close)
        autocmd User lsp_float_opened nmap <buffer> <silent> <expr><C-f> lsp#scroll(+4)
        autocmd User lsp_float_opened nmap <buffer> <silent> <expr><C-b> lsp#scroll(-4)
    augroup END

    augroup on_lsp_float_closed
        autocmd!
        autocmd User lsp_float_closed nunmap <buffer> <C-c>
        autocmd User lsp_float_closed nunmap <buffer> <C-f>
        autocmd User lsp_float_closed nunmap <buffer> <C-b>
    augroup END

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
    let g:lsp_diagnostics_signs_information = {'text': '❯'}
    let g:lsp_diagnostics_signs_hint = {'text': '⚙'}
    let g:lsp_document_code_action_signs_hint = {'text': '☇'}
endif

