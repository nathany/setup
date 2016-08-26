" Mac: configure Key Repeat and Caps lock key
" in System Preferences or with Karabiner and Seil.

" manage plugins with junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'bling/vim-airline'
Plug 'nanotech/jellybeans.vim'

" support for file types
Plug 'fatih/vim-go'
Plug 'asciidoc/vim-asciidoc'
Plug 'elixir-lang/vim-elixir'

Plug 'tpope/vim-vinegar' " file explorer (netrw)
Plug 'tpope/vim-commentary' " comment out lines

" completion
Plug 'Shougo/neocomplete.vim'

" class outline viewer
Plug 'majutsushi/tagbar'

" Add plugins to &runtimepath
call plug#end()

" this requires powerline/fonts such as Meslo LG M
let g:airline_powerline_fonts = 1

" disable swap
set noswapfile

" ignore files
set wildignore=.DS_Store,.git/**

" yank to system clipboard
set clipboard+=unnamedplus

set hlsearch

" vim-go configuration
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backward char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" spell checking
" set spell spelllang=en_us

" disable beeps
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" line numbers
set relativenumber " vim 7.4
set number

" default tab and auto-indent widths
set tabstop=4
set shiftwidth=4

" enable mouse for all modes
set mouse=a

" shortcuts for window focus
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" theme
colorscheme jellybeans
set cursorline

" hide vertical bar for split windows
set fillchars+=vert:\  " note: trailing space
hi VertSplit ctermfg=bg ctermbg=bg
" hide tildes beyond file (and some other things)
hi NonText ctermfg=bg

" automatically reload .vimrc when modified
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

