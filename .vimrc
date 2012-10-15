syntax enable

filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible
set modelines=0
set viminfo='20,\"1000

" disable the arrows so I don't use them
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

set laststatus=2    

:iabbrev @@  ryandetzel@gmail.com 

set colorcolumn=81                           " line to show 81 character mark
set cursorline                               " shows the horizontal cursor line

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set paste
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
set smarttab      " insert tabs on the start of a line
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't 

" Show invisible chars
set list
set listchars=tab:▸\ ,eol:¬

autocmd filetype javascript setlocal ts=2 sts=2 sw=2
autocmd filetype html setlocal ts=2 sts=2 sw=2
autocmd filetype css setlocal ts=2 sts=2 sw=2
autocmd filetype sass setlocal ts=2 sts=2 sw=2
autocmd filetype scss setlocal ts=2 sts=2 sw=2
