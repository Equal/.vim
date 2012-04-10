" VIM UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler "Always show current position
set backspace=eol,start,indent
set number
set cursorline
"Ctrl+N x2 toggles line numbers
nmap <C-N><C-N> :set invnumber<CR>


set ignorecase
set smartcase

set hlsearch

set incsearch "Make search look within strings

set magic "Set magic on, for regexps

set showmatch "Show matching brackets when text indicator on top of one

"toggle nerdtree
map <F2> :NERDTreeToggle \| :silent NERDTreeMirror<CR>
"close nerdtree if only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Show commands when entered
set showcmd

" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "enable syntax

set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

set t_Co=256

set gfn=Bitstream\ Vera\ Sans\ Mono:h10


set encoding=utf8

try
	lang en_US
catch
endtry

set ffs=unix,dos,mac

"Text, tab, and indents
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set ai "Auto Indent
set si "Smart Indent

vnoremap < <gv
vnoremap > >gv

" center searches
nnoremap n nzz
nnoremap N Nzz


"PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"VUNDLE
set nocompatible
filetype off

set rtp+=~/.vim/vundle
call vundle#rc()

"let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on


"POWERLINE
set laststatus=2
set encoding=utf-8

"NERDCOMMENTER
let mapleader = ","
