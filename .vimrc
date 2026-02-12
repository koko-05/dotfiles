set nocompatible
filetype off
syntax on
filetype plugin indent on
let mapleader = ","

set encoding=utf-8

set relativenumber
set number
set ruler

set wrap
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

set hidden
set ttyfast
set ttimeoutlen=100


set laststatus=2
set showmode
set showcmd

nnoremap / /\v
vnoremap / /\v
nnoremap j gj
nnoremap k gk
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-]> <C-w><
nnoremap <C-[> <C-w>>
nnoremap <C-n> :set number!<CR> :set relativenumber!<CR>

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set listchars=tab:▸\
set list " To enable by default

set termguicolors

let g:gruvbox_italic = 1
let g:gruvbox_italicize_strings = 1
let g:gruvbox_italicize_comments = 1

let mode = "dark\n"

if mode == "dark\n"
    set background=dark
else
    set background=light
endif

colorscheme gruvbox " from https://github.com/morhetz/gruvbox
