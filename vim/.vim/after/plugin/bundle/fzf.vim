if &runtimepath !~ 'fzf.vim'
    finish
endif

noremap <silent> <leader>ff <Cmd>Files<CR>
noremap <silent> <leader>fg <Cmd>GFiles<CR>
noremap <silent> <leader>fG <Cmd>GFiles?<CR>
noremap <silent> <leader>fb <Cmd>Buffers<CR>
noremap <silent> <leader>fc <Cmd>Colors<CR>
noremap <silent> <leader>fa <Cmd>Ag<CR>
noremap <silent> <leader>fr <Cmd>Rg<CR>
noremap <silent> <leader>f? <Cmd>Lines<CR>
noremap <silent> <leader>f/ <Cmd>BLines<CR>
noremap <silent> <leader>f] <Cmd>Tags<CR>
noremap <silent> <leader>f} <Cmd>BTags<CR>
noremap <silent> <leader>fm <Cmd>Marks<CR>
noremap <silent> <leader>fw <Cmd>Windows<CR>
noremap <silent> <leader>fH <Cmd>History<CR>
noremap <silent> <leader>f: <Cmd>History:<CR>
noremap <silent> <leader>fs <Cmd>History/<CR>
noremap <silent> <leader>fo <Cmd>Commits<CR>
noremap <silent> <leader>fO <Cmd>BCommits<CR>
noremap <silent> <leader>fk <Cmd>Commands<CR>
noremap <silent> <leader>fM <Cmd>Maps<CR>
noremap <silent> <leader>fh <Cmd>Helptags<CR>
noremap <silent> <leader>ft <Cmd>Filetypes<CR>

