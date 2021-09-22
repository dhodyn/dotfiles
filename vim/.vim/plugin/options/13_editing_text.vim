" 13 editing text

if has("persistent_undo")
    " automatically save and restore undo history
    set undofile

    " list of directories for undo files
    if has("unix")
        set undodir=~/.cache/vim/undo//,~/.local/share/vim/undo//,~/.vim/undo//,.,~/tmp,/var/tmp,/tmp
    elseif has("win32") && !has("unix")
        set undodir=~/cache/vim/undo//,~/local/share/vim/undo//,~/vimfiles/undo//,.,$TEMP,c:/tmp,c:/temp
    endif

endif

" specifies what <BS>, CTRL-W, etc. can do in Insert mode
set backspace=indent,eol,start

" specifies how Insert mode completion works for CTRL-N and CTRL-P
set complete-=i

" list of flags that tell how automatic formatting works
set formatoptions=tcqj

" adjust case of a keyword completion match
set infercase

" when inserting a bracket, briefly jump to its match
set showmatch

" NOT use two spaces after '.' when joining a line
set nojoinspaces

" "alpha", "octal", "hex", "bin" and/or "unsigned"; number formats
set nrformats=bin,hex
