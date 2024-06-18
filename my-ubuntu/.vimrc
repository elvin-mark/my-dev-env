" General settings
set nocompatible              " Disable compatibility mode with vi
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set encoding=utf-8            " Use UTF-8 encoding
set fileencoding=utf-8        " File encoding to UTF-8

" Interface settings
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set cursorline                " Highlight the current line
set showmatch                 " Highlight matching parentheses
set wildmenu                  " Command-line completion in enhanced mode
set wildmode=list:longest     " Completion mode
set showcmd                   " Show incomplete commands
set showmode                  " Show current mode

" Searching settings
set hlsearch                  " Highlight all search results
set incsearch                 " Incremental search
set ignorecase                " Ignore case while searching
set smartcase                 " Override ignorecase if search pattern contains uppercase letters

" Indentation settings
set tabstop=4                 " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4              " Number of spaces to use for each step of (auto)indent
set expandtab                 " Use spaces instead of tabs
set autoindent                " Copy indent from current line when starting a new line
set smartindent               " Smart autoindenting for C programs

" Appearance settings
set background=dark           " For dark terminal backgrounds
set termguicolors             " Enable 24-bit RGB color in the TUI
syntax enable                 " Enable syntax highlighting
colorscheme desert            " Set colorscheme (desert is a built-in scheme)

" File handling settings
set autoread                  " Auto-reload files if changed outside of Vim
set hidden                    " Allow switching buffers without saving
set undofile                  " Save undo history to an undo file
set backup                    " Keep a backup file
set backupdir=~/.vim/backup   " Directory to keep backup files
set directory=~/.vim/swap     " Directory to keep swap files
set undodir=~/.vim/undo       " Directory to keep undo files

" Key mappings
nnoremap <leader>w :w<CR>     " Save with <leader>w
nnoremap <leader>q :q<CR>     " Quit with <leader>q
nnoremap <leader>x :x<CR>     " Save and quit with <leader>x
nnoremap <leader>h :nohlsearch<CR> " Clear search highlighting with <leader>h
nnoremap <leader>n :set number!<CR> " Toggle line numbers with <leader>n

" Buffer navigation
nnoremap <leader>bn :bnext<CR>     " Go to the next buffer
nnoremap <leader>bp :bprevious<CR> " Go to the previous buffer
nnoremap <leader>bd :bdelete<CR>   " Delete a buffer

" Split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
