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

"Show commands when entered
set showcmd

"Show the filename
set title

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "enable syntax

let g:solarized_contrast="high"
let g:solarized_visibility="high"
set background=dark
colorscheme solarized

set t_Co=256

set gfn=Bitstream\ Vera\ Sans\ Mono:h10

set encoding=utf8
set ffs=unix,dos,mac

au BufNewFile,BufRead *.haml* set syntax=haml

"Text, tab, and indents
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set ai "Auto Indent

vnoremap < <gv
vnoremap > >gv

" center searches
nnoremap n nzz
nnoremap N Nzz


"PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NeoBundle
if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

filetype plugin on

call neobundle#rc(expand('~/.vim/bundle/'))

"let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"VimProc!
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

NeoBundle 'jeroenbourgois/vim-actionscript'
autocmd BufRead *.as set filetype=actionscript

NeoBundle 'embear/vim-localvimrc'
NeoBundle 'tpope/vim-surround'
let g:localvimrc_persistent = 2


NeoBundle 'sudo.vim'

filetype on

NeoBundleCheck

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_arg_map = 1
let g:ctrlp_max_height = 20
let g:ctrlp_clear_cache_on_exit = 0
" the directory at work is ridiculously huge
let g:ctrlp_max_files = 40000
let g:ctrlp_custom_ignore = {
   \ 'dir': '\v[\/]\.(git|hg|svn|dist)$|build|tmp|node_modules|bower_components',
   \ 'file': '\v\.(exe|so|dll|txt|vert|frag|swf|png|jpg|gif|otf|wotf|eot|svg|ttf|pem|patch|pickle|psd|xpi|xrf|xsf|xsl|zip|tga|swp|swo|hi|o|p_o|p_hi)$'
   \ }

"POWERLINE
set laststatus=2
set encoding=utf-8

let mapleader = ","

"put vim in interactive mode
set shellcmdflag=-ic


""ETC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup "dont create .swo
set noswapfile "dont create .swp
set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.swo,*.ho,*.hi,*.beam "ignore compiled files

nnoremap <C-h> :bprevious<cr>
nnoremap <C-l> :bnext<cr>
nnoremap ,q :bp\|bd #<cr>

nnoremap ,jc Oconsole.log('<C-R>=expand("%:t")<cr>:<C-R>=line('.')<cr>');<Esc>
