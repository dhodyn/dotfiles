" 1 important

" behave very Vi compatible (not advisable)
set nocompatible


" 2 moving around, searching and patterns

" list of flags specifying which commands wrap to another line
set whichwrap=b,s

" many jump commands move the cursor to the first non-blank
set nostartofline

" show match for partly typed search patterns
set incsearch

" ignore case when using a search pattern
set ignorecase

" override 'ignorecase' when pattern has upper case characters
set smartcase


" 3 tags

" file names in a tags file are relative to the tags file
set tagrelative


" 4 displaying text

" number of screen lines to show around the cursor
set scrolloff=4

" wrap long lines at a character in 'breakat'
set linebreak 

" preserve indentation in wrapped text
set breakindent

" string to put before wrapped screen lines
" let &showbreak='\ '

" minimal number of columns to scroll horizontally
set sidescroll=1

" minimal number of columns to keep left and right of the cursor
set sidescrolloff=8

" include "lastline" to show the last line even if it doesn't fit
set display=lastline

" don't redraw while executing macros
set lazyredraw

" list of strings used for list mode
set listchars=tab:>\ ,trail:-,nbsp:+,eol:$,extends:>,precedes:<

" show the line number for each line
set number

" show the relative line number for each line
set relativenumber

" number of columns to use for the line number
set numberwidth=4


" 5 syntax, highlight, and spelling

if &t_Co > 2 || has("gui_running")
    " the background color brightness
    set background=dark

    " syntax highlighting
    syntax enable

    " highlighting strings inside C comments.
    let c_comment_strings=1

    " highlight all matches for the last used pattern
    set hlsearch

    " use GUI colors for the terminal
    set termguicolors

endif


" 6 multiple windows

" when to use a status line for the last window
set laststatus=2

" don't unload a buffer when no longer shown in a window
set hidden

" "useopen" and/or "split"; which window to use when jumping to a buffer
set switchbuf=uselast

" a new window is put below the current one
set splitbelow

" a new window is put right of the current one
set splitright

" 7 multiple tab pages

" maximum number of tab pages to open for -p and 'tab all'
set tabpagemax=50


" 8 terminal
set titleold=


" 9 using the mouse

if has("mouse")
    " list of flags for using the mouse
    set mouse=nvi

    " what the right mouse button is used for
    set mousemodel=popup_setpos

    " type of mouse
    set ttymouse=xterm
endif


" 10 printing


" 11 messages and info

" list of flags to make messages shorter
set shortmess=filnxtToOF

" show (partial) command keys in the status line
set showcmd

" display the current mode in the status line
set showmode

" show cursor position below each window
set ruler

" pause listings when the screen if full
set more

" do not ring the bell for these reasons
set belloff=all


" 12 selecting text


" 13 editing text

" automatically save and restore undo history
set undofile

" list of directories for undo files
if has("unix")
    silent call mkdir($HOME . '/.local/state/vim/undo', 'p')
    set undodir=~/.local/state/vim/undo//,.,~/tmp,/var/tmp,/tmp
elseif has("win32") && !has("unix")
    silent call mkdir($HOME . '/_local/state/vim/undo', 'p')
    set undodir=~/_local/state/vim/undo//,.,$TEMP,c:/tmp,c:/temp
endif

" specifies what <BS>, CTRL-W, etc. can do in Insert mode
set backspace=indent,eol,start

" list of flags that tell how automatic formatting works
set formatoptions=tcqj

" specifies how Insert mode completion works for CTRL-N and CTRL-P
set complete=.,w,b,u,t

" adjust case of a keyword completion match
set infercase

" when inserting a bracket, briefly jump to its match
set showmatch

" NOT use two spaces after '.' when joining a line
set nojoinspaces

" number formats recognized for CTRL-A and CTRL-X commands
set nrformats=bin,hex


" 14 tabs and indenting

" a <Tab> in an indent inserts 'shiftwidth' spaces
set smarttab

" round to 'shiftwidth' for '<<' and '>>'
set shiftround

" automatically set the indent of a new line
set autoindent

" do clever autoindenting
set smartindent


" 15 folding


" 16 diff mode


" 17 mapping

" allow timing out halfway into a key code
set ttimeout

" time in msec for 'ttimeout'
set ttimeoutlen=50


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
    silent call mkdir($HOME . '/.local/state/vim/backup', 'p')
    set backupdir=~/.local/state/vim/backup//,.,~/tmp,/var/tmp,/tmp
elseif has("win32") && !has("unix")
    silent call mkdir($HOME . '/_local/state/vim/backup', 'p')
    set backupdir=~/_local/state/vim/backup//,.,$TEMP,c:/tmp,c:/temp
endif

" automatically read a file when it was modified outside of Vim
set autoread

" forcibly sync the file to disk after writing it
set nofsync


" 19 the swap file

" list of directories for the swap file
if has("unix")
    silent call mkdir($HOME . '/.local/state/vim/swap', 'p')
    set directory=~/.local/state/vim/swap//,.,~/tmp,/var/tmp,/tmp
elseif has("win32") && !has("unix")
    silent call mkdir($HOME . '/_local/state/vim/swap', 'p')
    set directory=~/_local/state/vim/swap//,.,$TEMP,c:/tmp,c:/temp
endif


" 20 command line editing

" how many command lines are remembered
set history=10000

" key that triggers command-line expansion
set wildchar=9

" command-line completion shows a list of marches
set wildmenu

" how command line completion works
set wildmode=longest:full,full

" key used to open the command-line window
set cedit=^F


" 21 executing_external_commands

" use a time file for shell commands instead of using a pipe
set shelltemp

" program used for the "K" command
set kp=:Man


" 22 running make and jumping to errors (quickfix)


" 23 language_specific

" apply 'langmap' to mapped characters
set nolangremap

" specifies the characters in a keyword
set iskeyword=@,48-57,_,192-255


" 24 multi-byte characters

" character encoding used in Vim
set encoding=utf-8

" character encoding used by the terminal
set termencoding=utf-8

" maximum number of combining (composing) charaters to displayed
set maxcombine=6


" 25 various

" load plugin scripts when starting up
set loadplugins

" directory where to store files with :mkview
if has("unix")
    silent call mkdir($HOME . '/.local/state/vim/view', 'p')
    set viewdir=~/.local/state/vim/view//,.,~/tmp,/var/tmp,/tmp
elseif has("win32") && !has("unix")
    silent call mkdir($HOME . '/_local/state/vim/view', 'p')
    set viewdir=~/_local/state/vim/view//,.,$TEMP,c:/tmp,c:/temp
endif

" list that specifies what to write in the viminfo file
set viminfo=!,'100,<50,s10,h

" filename used for viminfo file
if has("unix")
    silent call mkdir($HOME . '/.local/state/vim/viminfo', 'p')
    set viminfofile=~/.local/state/vim/viminfo//,.,~/tmp,/var/tmp,/tmp
elseif has("win32") && !has("unix")
    silent call mkdir($HOME . '/_local/state/vim/viminfo', 'p')
    set viminfofile=~/_local/state/vim/viminfo//,.,$TEMP,c:/tmp,c:/temp
endif
