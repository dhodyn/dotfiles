if &runtimepath !~ 'lightline.vim'
    finish
endif

set noshowmode

let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'fugitive': 'LightlineFugitive',
    \   'filetype': 'LightlineFiletype',
    \   'fileformat': 'LightlineFileformat'
    \ },
    \ }

function! LightlineFugitive()
    try
	    if &ft !~? 'dirvish' && exists('*FugitiveHead')
            let mark = ' '
            let branch = FugitiveHead()
            return branch !=# '' ? mark.branch : ''
        endif
    catch
    endtry
    return ''
endfunction

function! LightlineFiletype()
    if exists('*WebDevIconsGetFileTypeSymbol')
        return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
    endif
endfunction

function! LightlineFileformat()
    if exists('*WebDevIconsGetFileFormatSymbol')
        return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
    endif
endfunction

