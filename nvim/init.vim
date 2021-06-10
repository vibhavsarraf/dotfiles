filetype plugin on
syntax on

" Plugins
call plug#begin()
" Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
call plug#end()

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
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Enable . command in Visusl Mode
vnoremap . :normal .<cr>

" Copy to clipboard directly
set clipboard=unnamed

" Coloring
set termguicolors

" Deoplete
let g:deoplete#enable_at_startup = 1

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Mouse
set mouse=a

" Nerdtree Setup
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

nmap <F7> :w<CR>:!python3 %<CR>
" Doesn't work
autocmd filetype py nmap <F5> :w<CR>:!python3 %<CR>

" Copy
nmap ,yw viw"+y
nmap ,ya ggvG"+y
vmap ,Y "+y
