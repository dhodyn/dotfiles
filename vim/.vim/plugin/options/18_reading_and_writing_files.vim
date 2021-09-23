" 18 reading and writing files

" enable using settings from modelines when reading a file
set modeline

" end-of-line format
set fileformats=unix,dos

" keep a backup after overwriting a file
set backup

" whether to make the backup as a copy or rename the existing file
set backupcopy=auto

" list of directories to put backup files in
if has("unix")
    set backupdir=~/.cache/vim/backup//,~/.local/share/vim/backup//,~/.vim/backup//,.,~/tmp,/var/tmp,/tmp
elseif has("win32") && !has("unix")
    set backupdir=~/cache/vim/backup//,~/local/share/vim/backup//,~/vimfiles/backup//,.,$TEMP,c:/tmp,c:/temp
endif

" automatically read a file when it was modified outside of Vim
set autoread

" forcibly sync the file to disk after writing it
set nofsync

