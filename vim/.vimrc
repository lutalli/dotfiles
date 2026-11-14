"
" <Appearance>
"

" Enable syntax highlighting
syntax on

" Use `guixx` instead of `ctermxx`
set termguicolors

" Color scheme
colorscheme less

" Always display statusline
set laststatus=2

" Hide vertical split and tabpanel split characters
set fillchars=vert:\ ,tpl_vert:\ 

" Show tab characters and trailing spaces
set list
set listchars=tab:••,trail:░

" Hide trailing spaces in insert mode
augroup toggle_trail
    autocmd!
    autocmd InsertEnter * set listchars-=trail:
    autocmd InsertLeave * set listchars+=trail:░
augroup END

" Enable incremental search
set incsearch

" Minimal number of lines below cursor
set scrolloff=15

" Do not show file info when opening a file
set shortmess+=F

" Ignore hyphens when using <C-a> and <C-x>
set nrformats+=unsigned

" Disable MatchParen
let g:loaded_matchparen = 1

" Hide Netrw banner
let g:netrw_banner = 0

" Use my 'cursorline' and 'cursorcolumn' in Netrw
let g:netrw_cursor = 0


"
" <Editing>
"

" Allow abandoning a buffer without writing
set hidden

" Enable mouse
set mouse=a

" Enable word wrapping
set wrap

" Keep wrapped line indented
set breakindent

" Use spaces instead of tabs
set expandtab

" Insert 4 spaces for tabs
set shiftwidth=4

" Display each tab as 4 visual spaces
set tabstop=4

" Keep indent when starting a new line
set autoindent


"
" <File Search>
"

" Search file content using ripgrep
function RunRg(arg)
    if a:arg == ''
        return
    endif

    cgetexpr system('rg --vimgrep ' . a:arg)
    copen
endfunction

" Automatically close quickfix window when opening a file
augroup close_qf
    autocmd!
    autocmd FileType qf nnoremap <buffer> <silent> <CR> <CR>:cclose<CR>
augroup END


"
" <Mappings>
"

" Buffer navigation
nnoremap <silent> <M-d> :bdelete<CR>
nnoremap <silent> <M-[> :bprev<CR>
nnoremap <silent> <M-]> :bnext<CR>

" Toggle search highlight
nnoremap <silent> <leader>h :set hlsearch!<CR>

" Identify syntax highlighting group
nnoremap <silent> <leader>i :echo {l, c ->
    \ "hi<" . synIDattr(synID(l, c, 1), "name")
    \ . "> trans<" . synIDattr(synID(l, c, 0), "name")
    \ . "> lo<" . synIDattr(synIDtrans(synID(l, c, 1)), "name") . ">"
    \ }(line("."), col("."))<CR>

" File search mappings
command -nargs=1 Rg :call RunRg(<f-args>)
nnoremap <leader>g :Rg ""<Left>
nnoremap <silent> <leader>q :cprevious<CR>
nnoremap <silent> <leader>w :cnext<CR>
nnoremap <leader>x :e _codex/**/.md<Left><Left><Left>

" Toggle line number
nnoremap <silent> <leader>n :set number!<CR>

" Toggle spell check
nnoremap <silent> <leader>s :set spell!<CR>
