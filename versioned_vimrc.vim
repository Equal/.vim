" VIM UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler "Always show current position
set backspace=eol,start,indent
set number
set cursorline
"Ctrl+N x2 toggles line numbers
nmap <C-N><C-N> :set invnumber<CR>

set wildmenu
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

"Show the filename
set title

" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "enable syntax

"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
set background=dark
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
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'

filetype plugin indent on


" CtrlP
 let g:ctrlp_map = '<c-p>'
 let g:ctrlp_cmd = 'CtrlP'
 let g:ctrlp_arg_map = 1
 let g:ctrlp_max_height = 20
 let g:ctrlp_clear_cache_on_exit = 0
" the directory at work is ridiculously huge
 let g:ctrlp_max_files = 40000

 let g:ctrlp_custom_ignore = {
     \ 'dir': '\v[\/]\.(git|hg|svn|dist)$',
     \ 'file': '\v\.(exe|so|dll|txt|vert|frag|swf|png|jpg|gif|otf|wotf|eot|svg|ttf|pem|patch|pickle|psd|xpi|xrf|xsf|xsl|zip|tga|swp|swo|hi|o|p_o|p_hi)$'
     \ }

"POWERLINE
set laststatus=2
set encoding=utf-8

"NERDCOMMENTER
let mapleader = ","

"put vim in interactive mode
set shellcmdflag=-ic
