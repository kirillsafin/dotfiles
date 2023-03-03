" VIM SETTINGS------------------------- {{{
" source .nvimrc in the project filder
" set exrc
" set secure

set hidden

set shell=/bin/zsh
set shellcmdflag=-ic
" Disable Sound on error
set noerrorbells
" Disable compatibility with vi
set nocompatible

syntax on
set number
set relativenumber
set numberwidth=1
set signcolumn=yes
" Tab Settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab " Space Chars statt Tabs
set smartindent
" Highlight cursor
set nocursorline
set nocursorcolumn
" Don't let cursor scroll below or above N lines
set scrolloff=8
" Enable softwrap + don't cut the word (unset list)
set wrap
set linebreak
set nolist
" Color Line 
set colorcolumn=80
" Show partial command during typing in the last line of the screen
set showcmd
" Show the mode
set showmode
" Show matching words during search
set showmatch
" Highlight during a search
set hlsearch
" While searching though a file incrementally highlight matching charachters during typing
set incsearch

" default history size is 20
set history=1000

" Enable auto completion menu after pressing TAB
" set wildmenu
" set wildmode=list:longest " bash similar autocomplition behaviour
" wildmenu ignore
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx  

" Don't create swap file
set noswapfile
" Don't save backup files
set nobackup

" Undo Settings
set undodir=~/.config/nvim/undodir
set undofile

" Spell check
set encoding=UTF-8
set spell
set spelllang=en_us,de_de

set termguicolors

set noscrollbind
set nocursorbind

set updatetime=50

set foldlevel=99

" Enable type file detection
set filetype=on
" Enable plugins and load plugins for detected file type
filetype plugin on
" Load an indent file for the detected file type
filetype indent on
" }}}
