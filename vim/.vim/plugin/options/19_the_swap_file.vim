" 19 the swap file

" list of directories for the swap file
if has("unix")
    set directory=~/.cache/vim/swap//,~/.local/share/vim/swap//,~/.vim/swap//,.,~/tmp,/var/tmp,/tmp
elseif has("win32") && !has("unix")
    set directory=~/cache/vim/swap//,~/local/share/vim/swap//,~/vimfiles/swap//,.,$TEMP,c:/tmp,c:/temp
endif

