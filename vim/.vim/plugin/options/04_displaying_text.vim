" 4 displaying text

" number of screen lines to show around the cursor
set scrolloff=1

" wrap long lines at a character in 'breakat'
set linebreak 

" preserve indentation in wrapped text
set breakindent

" string to put before wrapped screen lines
" let &showbreak='\ '

" minimal number of columns to keep left and right of the cursor
set sidescrolloff=1

" include "lastline" to show the last line even if it doesn't fit
set display=lastline

" don't redraw while executing macros
set lazyredraw

" show invisible characters as unicode, fall back to ascii
set listchars=tab:>-,extends:>,precedes:<,nbsp:~,trail:-,eol:$
set nolist

" show the line number for each line
set number

" show the relative line number for each line
set relativenumber

" number of columns to use for the line number
set numberwidth=4

