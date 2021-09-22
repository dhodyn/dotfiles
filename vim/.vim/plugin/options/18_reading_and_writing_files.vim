" reading and writing files

" end-of-line format
set fileformats=unix,dos

" keep a backup after overwriting a file
set backup

" list of directories to put backup files in
if has("unix")
    set backupdir=~/.cache/vim/backup//,~/.local/share/vim/backup//,~/.vim/backup//,.,~/tmp,/var/tmp,/tmp
elseif has("win32") && !has("unix")
    set backupdir=~/cache/vim/backup//,~/local/share/vim/backup//,~/vimfiles/backup//,.,$TEMP,c:/tmp,c:/temp
endif

" automatically read a file when it was modified outside of Vim
set autoread
