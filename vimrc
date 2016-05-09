" Misc
" ----
" Don't try to be vi compatible
set nocompatible


" Visual/Layout
" -------------
" Syntax, line numbers, cursor line
syntax on
set number
set cursorline
" Highlight brackets
set showmatch

" Forces vim to redraw less frequently the window
set lazyredraw
" Rendering
set ttyfast

" Status bar
set laststatus=2
" Show the current mode
set showmode
" Show the last command that has been typed
set showcmd
" Enables a wildcard menu when typing commands
set wildmenu
" Show file stats on bottom left corner (line numbers, columns, etc)
set ruler

" Blink cursor on error instead of beeping
set visualbell


" Content
" -------
" Encoding
set encoding=utf-8

" Enable specific identation settings for different filetypes
filetype indent on
" Ignore file spceific settings
set modelines=0

" When pressing >> or << you get 4 spaces
set shiftwidth=4
" Pressing tab gets 4 spaces
set tabstop=4
" Do smart identation eg. after : or {
set smarttab
" Keep identation after pressing enter
set autoindent
" Convert tabs to spaces
set expandtab


" Keybindings
" -----------
" Leader
let mapleader = ","

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
map <leader><space> :let @/=''<cr> " clear search

" Formatting
map <leader>q gqip
