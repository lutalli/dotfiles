" Hidden files
"
" Necessary to place this setting here instead of  .vimrc  ,
" otherwise  netrw_gitignore  wouldn't yet be ready
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,' .. netrw_gitignore#Hide()
