packloadall

set encoding=UTF-8
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number relativenumber
set tabstop=4
set expandtab
set autoindent
set smartindent
set expandtab 
set smarttab
set softtabstop=4
set expandtab
set tabstop=4
set shiftwidth=4
set nobackup
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set showcmd
set noshowmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set nofoldenable

set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
  Plug 'preservim/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/vim-emoji'
  Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
 
  Plug 'jceb/vim-orgmode'
  Plug 'tpope/vim-speeddating'
call plug#end()

let mapleader = " "
nnoremap <leader>n :NERDTreeToggle<cr>
let g:prettier#autoformat = 1

