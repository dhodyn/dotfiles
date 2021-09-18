" arrow keys move screenlines when text is wrapped
noremap <Up> gk
noremap <Down> gj

" consistent yank behaviour
noremap Y y$

" open a new buffer
noremap <silent> <leader>B :enew<CR>

" clear the search and redraw the screen
noremap <silent> <C-l> :<C-u>nohlsearch<CR>:<C-u>syntax sync fromstart<CR><C-l>

" zap trailing whitespace
noremap <silent> <leader>zz :call mappings#zap()<CR><C-o>

" %% in the command mode returns the current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
