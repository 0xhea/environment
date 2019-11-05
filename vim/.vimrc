" ===
" === System
" ===
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
let &t_ut=''
set encoding=utf-8
set autochdir
" set mouse=a

" ===
" === Display
" ===
syntax on
set number
set relativenumber
set cursorline
" set ruler
set showcmd
set wildmenu
set scrolloff=5
set laststatus=2
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ===
" === Editor behavior
" ===
set list
set listchars=tab:▸\ ,trail:▫
set wrap
set textwidth=0
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set indentexpr=

" Split
set splitright
set splitbelow

" Search
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" ===
" === Basic Mappings
" ===
let mapleader=" "

" Move Map
"     ^
"     i
" < j   l >
"     k
"     v
noremap j h
noremap k j
noremap i k

noremap I 5k
noremap K 5j
noremap L $
noremap J 0

" Word Move Map
" w b e

" Insert Map
noremap h i
noremap H I

" Jump Map
noremap gi gk
noremap gk gj
noremap gj gh

noremap gh gi

" Search Map
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>

" Insert Mode Move Map
" = <TAB> = <C-i>, so cant map <C-i>
" inoremap <C-i> <up>
" inoremap <C-k> <down>
" inoremap <C-j> <left>
" inoremap <C-l> <right>
inoremap <Esc>i <up>
inoremap <Esc>k <down>
inoremap <Esc>j <left>
inoremap <Esc>l <right>

" ===
" === Useful Cmd Map
" ===
map S :w<CR>
map Q :q<CR>
map R :source ~/.vimrc<CR>

" Open the vimrc file anytime
map <LEADER>rc :e ~/.vimrc<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Split Map
map s <nop>

map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>

noremap <C-w>i <C-w>k
noremap <C-w>k <C-w>j
noremap <C-w>j <C-w>h
noremap <C-w>h <C-w>i

map <LEADER>i <C-w>i
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>l <C-w>l

" Change Split Window Size
" map <up> :res +5<CR>
" map <down> :res -5<CR>
" map <left> :vertical resize-5<CR>
" map <right> :vertical resize+5<CR>

" Change Split Mode
map sh <C-w>t<C-w>K
map sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Tab Map
map tu :tabe<CR>
map tj :tabp<CR>
map tl :tabn<CR>

" ===
" === Vim-Plug
" ===
call plug#begin()

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " File navigation
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " coc.nvim

    " Error checking
    Plug 'w0rp/ale'

    " Bookmarks
    Plug 'kshenoy/vim-signature'

call plug#end()
" colorscheme molokai

" ===
" === NERDTree
" ===
noremap tt :NERDTreeToggle<CR>
" let NERDTreeMapOpenExpl = ""
" let NERDTreeMapUpdir = "J"
" let NERDTreeMapUpdirKeepOpen = "j"
let NERDTreeMapOpenSplit = "h"
" let NERDTreeMapOpenVSplit = "L"
" let NERDTreeMapActivateNode = "l"
" let NERDTreeMapOpenInTab = "o"
" let NERDTreeMapOpenInTabSilent = "O"
" let NERDTreeMapPreview = ""
" let NERDTreeMapCloseDir = ""
" let NERDTreeMapChangeRoot = "i"
" let NERDTreeMapMenu = ","
" let NERDTreeMapToggleHidden = "zh"

" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

