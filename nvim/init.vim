" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set nocompatible
set showmatch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number

let mapleader=','

nmap <leader>, :w<cr>
nmap <leader>. :wq<cr>
nmap <leader>r :source ~/.config/nvim/init.vim<cr>

set virtualedit=onemore
set showmatch
set smartcase
set wildmode=list:longest,full

" Fast Navigation
nmap J 4j
nmap K 4k
nmap L $
nmap H ^
vmap J 4j
vmap K 4k
vmap L $
vmap H ^
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Enable . command in Visusl Mode
vnoremap . :normal .<cr>

" Copy to clipboard directly
set clipboard=unnamed
