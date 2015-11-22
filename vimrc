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

Plug 'tpope/vim-vinegar' " file explorer (netrw)

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Add plugins to &runtimepath
call plug#end()

" this requires powerline/fonts such as Meslo LG M
let g:airline_powerline_fonts = 1

" disable swap
set noswapfile

" ignore files
set wildignore=.DS_Store,.git/**

" vim-go configuration
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

" YouCompleteMe configuration
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

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

