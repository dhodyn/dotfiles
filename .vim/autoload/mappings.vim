" toggle number mode
function! mappings#toggle_number_mode()
    if (&number==0 && &relativenumber==0)
        setlocal number
        setlocal relativenumber
    elseif (&number==0 && &relativenumber==1)
        setlocal number
        setlocal norelativenumber
    elseif (&number==1 && !&relativenumber==0)
        setlocal nonumber
        setlocal relativenumber
    else
        setlocal nonumber
        setlocal norelativenumber
    endif
endfunction

" toggle sign column
function! mappings#toggle_sign_column()
    if (&signcolumn=="number")
        setlocal signcolumn=auto
    elseif (&signcolumn=="auto")
        setlocal signcolumn=no
    elseif (&signcolumn=="no")
        setlocal signcolumn=yes
    else
        setlocal signcolumn=number
    endif
endfunction

" zap trailing whitespace.
function! mappings#zap() abort
    %s/\s*$//
endfunction

