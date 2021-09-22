" arrow keys move screenlines when text is wrapped
nnoremap <Up> gk
nnoremap <Down> gj

" consistent yank behaviour
nnoremap Y y$

" undo behaviour in insert mode
inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

" open a new buffer
nnoremap <leader>B <cmd>enew<CR>

" clear the search and redraw the screen
nnoremap <C-l> <cmd>nohlsearch<bar>diffupdate<bar>syntax sync fromstart<CR><C-l>

" zap trailing whitespace
nnoremap <leader>zz <cmd>call mappings#zap()<CR>

" %% in the command mode returns the current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
