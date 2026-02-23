if &runtimepath !~ 'vim-lsp-settings'
    finish
endif

let g:lsp_settings_filetype_python = ['ty', 'ruff']

