" toggle number mode
function! mappings#toggle_number_mode()
    if (&number==0 && &relativenumber==0)
        set number
        set relativenumber
    elseif (&number==0 && &relativenumber==1)
        set number
        set norelativenumber
    elseif (&number==1 && !&relativenumber==0)
        set nonumber
        set relativenumber
    else
        set nonumber
        set norelativenumber
    endif
endfunction

" zap trailing whitespace.
function! mappings#zap() abort
    %s/\s*$//
endfunction

