set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
syntax on
set number
set mouse=a
set mousehide

set spell
set hlsearch
set showmatch
set incsearch
set ignorecase
set autoindent
set history=100
set cursorline
if has("unnamedplus")
  set clipboard=unnamedplus
elseif has("clipboard")
  set clipboard=unnamed
endif

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Nerdtree
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0


" JPoz extras
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
set rtp+=/usr/local/go/misc/vim/
filetype plugin indent on
syntax on

set dir=~/tmp
set backupdir=~/backups

let NERDTreeIgnore=['\.DS_Store','\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']

if has('gui_running')
    set background=light
    colorscheme solarized
else
    set background=dark
    colorscheme Tomorrow
endif


" Stop the damn beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
