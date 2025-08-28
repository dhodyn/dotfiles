if &runtimepath !~ 'editorconfig'
    finish
endif

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
