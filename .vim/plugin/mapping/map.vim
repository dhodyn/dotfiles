" arrow keys move screenlines when text is wrapped
noremap <Up> gk
noremap <Down> gj

" consistent yank behaviour
noremap Y y$

" open a new buffer
noremap <silent> <leader>B :enew<CR>

" buffer navigation
noremap <silent> [b :bprevious<CR>
noremap <silent> ]b :bnext<CR>
noremap <silent> [B :bfirst<CR>
noremap <silent> ]B :blast<CR>

" clear the search and redraw the screen
noremap <silent> <C-l> :<C-u>nohlsearch<CR>:<C-u>syntax sync fromstart<CR><C-l>

" toggle list
noremap <leader>l :setlocal list!<CR>:set list?<CR>

" toggle spell
noremap <leader>s :setlocal spell!<CR>:set spell?<CR>

" toggle wordwrap
noremap <leader>w :setlocal wrap!<CR>:set wrap?<CR>

" toggle number mode
noremap <silent> <leader>n :call mappings#toggle_number_mode()<CR>

" zap trailing whitespace
noremap <silent> <leader>zz :call mappings#zap()<CR>

" %% in the command mode returns the current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

