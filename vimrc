set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Surround plugin
Plugin 'tpope/vim-surround'

" Elixir
Plugin 'elixir-editors/vim-elixir'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'benmills/vimux'

Plugin 'tpope/vim-repeat' " enables repeating other supported plugins with the .command
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode

" Go to definition for functions
Plugin 'ternjs/tern_for_vim'

"File Finder
Plugin 'ctrlpvim/ctrlp.vim'

"Syntax Highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

"Go to modules: use gf
Plugin 'feix760/vim-javascript-gf'

"Run prettier for js files
Plugin 'skywind3000/asyncrun.vim'

"Emmet for easier JSX
Plugin 'mattn/emmet-vim'

"Plugin for codeforces
Plugin 'gabrielsimoes/cfparser.vim'
" cfi - login, cfo - logout, , cfp - problem, cfd - download, cft - tests, cfr
" - run, cfs - submit, cfl last 5 submissions

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
execute pathogen#infect()
syntax on

set smartindent
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set mouse=v

let mapleader = ','

"Stop indentation
nmap <leader>i :setl noai nocin nosi inde=<cr>

set t_Co=256
syntax on
scriptencoding utf-8

"Show line numbers
set number
set relativenumber
set showcmd
autocmd filetype javascript nmap <F5> :w<CR>:node %<CR>
autocmd filetype cpp nmap <F5> :w<cr> :!g++ % -std=c++17 && ./a.out <CR>
map <F6> :w<cr> :!node % <CR>
map <F7> :w<cr> :!python3 % <CR>
map <F8> :w<cr> :!go run % <cr>
"nmap <F4> :source ~/.vimrc<CR>

nmap ,, :w<cr>
nmap ,. :wq<cr>
nmap ,r :source ~/.vimrc<cr>
"map <C-y> "+y
"map <C-S-p> "+p

set showbreak=~

"Searching
set hlsearch
set incsearch
set ignorecase
nmap <leader>h /fsad<cr>

set virtualedit=onemore
set showmatch
set smartcase
set wildmode=list:longest,full

"Nerdtree Setup
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nmap <leader>l :NERDTreeFind<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
"nmap <tab> <C-w>w
"nmap <bs> <C-w>W

nmap J 4j
nmap K 4k
nmap L $
nmap H ^
vmap J 4j
vmap K 4k
vmap L $
vmap H ^

set autoread

"" Appearence

set wildmenu
set scrolloff=3

vmap <leader>[ <gv
vmap <leader>] >gv
nmap <leader>[ <<
nmap <leader>] >>

"scrol cursor line faster

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"YCM Autocomplete

let g:ycm_min_num_of_chars_for_completion = 3

" Vimux Comfiguration

nmap <leader>vr :VimuxRunCommand('nodemon')<CR>
nmap <leader>vz :VimuxZoomRunner<CR>
nmap <leader>vt :VimuxInterruptRunner<CR>
nmap <leader>vc :VimuxCloseRunner<CR>
nmap <leader>vl :VimuxRunLastCommand<CR>
nmap <leader>vs :VimuxInspectRunner<CR>
let g:VimuxHeight = 25
let g:VimuxUseNearest = 0
let g:VimuxRunnerType = "pane"

"Tern Configs

nmap <leader>td :TernDef<CR>
nmap <leader>tr :TernRename<CR>
nmap <leader>tf :TernRefs<CR>

" Enable . command in Visusl Mode
vnoremap . :normal .<cr>

" Copy to clipboard directly
set clipboard=unnamed

"CtrlP Configs
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|deps'
set runtimepath^=~/.vim/bundle/ctrlp.vim
:helptags ~/.vim/bundle/ctrlp.vim/doc

"Run prettier for js files
"autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

"Emmet for JSX config
let g:user_emmet_leader_key='<C-b>'
let g:user_emmet_settings = {
  \  'javascript.js' : {
    \      'extends' : 'js',
    \  },
  \}

"Git Shortcuts

nmap <leader>gb :Gblame<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gq :Gwq<CR>

" Competitive
nmap <leader>cf :VimuxRunCommand('g++ -std=c++17 ans1.cpp && ./a.out < inp')<CR>

" Search word under cursor
nnoremap <leader>fj :execute "grep! -IRi --exclude-dir=node_modules " . expand("<cword>") . " *" <cr>:copen<CR>
" Use <leader>f for search with motions and in visual mode. Code is written in
" ~/.vim/plugin/grep-operator.vim

" Syntastic Plugin Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
