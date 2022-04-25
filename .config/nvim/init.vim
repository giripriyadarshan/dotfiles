set nocompatible              " be iMproved, required
if has('filetype')
	filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
	syntax on
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'dracula/vim', { 'name': 'dracula' }

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'vim-syntastic/syntastic'

Plugin 'vim-airline/vim-airline'

Plugin 'terryma/vim-multiple-cursors'


Plugin 'frazrepo/vim-rainbow'

Plugin 'github/copilot.vim'

Plugin 'rust-lang/rust.vim'


" All of your Plugins must be added before the following line


call vundle#end()            " required
filetype plugin indent on    " required
colorscheme dracula
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
if has('termguicolors')
	set termguicolors
endif

set hidden
set wildmenu
set showcmd
set confirm

" Enable use of the mouse for all modes
if has('mouse')
	set mouse=a
	set mousehide
endif

" Display line numbers on the left
set number

set showmode

set ignorecase
set smartcase
set ruler

"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')

" Search
set incsearch
set hlsearch

set cursorline
set showmatch
set wrap
set linebreak
set encoding=utf-8
set history=2000

set noerrorbells
set belloff=all

let g:rainbow_active = 1

" key remaps
nnoremap <SPACE> zz
nnoremap :W :w
nnoremap :Q :q
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>


set directory^=$HOME/.vim/swap//

set autoread
