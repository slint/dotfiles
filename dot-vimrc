" Misc
" ====
" Don't try to be vi compatible
set nocompatible

" Put swap files in a specific folder
set backupdir=~/.swp_files
set directory=~/.swp_files

" Visual/Layout
" =============
" Syntax, line numbers, relative line numbers, cursor line
syntax on
filetype plugin on
set relativenumber
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
" =======
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
" ===========
" Leader
let mapleader = ","

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" When going to a specific line, put it in the center of the view
nnoremap G Gzz

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
map <leader><space> :nohl<cr>

" Formatting
map <leader>q gqip

" Fix pasting (from https://stackoverflow.com/a/38258720/2099726)
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

