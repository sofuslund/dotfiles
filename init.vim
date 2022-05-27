" Extensions
call plug#begin()
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'itchyny/lightline.vim'
call plug#end()

" palenight
set background=dark
colorscheme palenight

let g:lightline = {'colorscheme': 'palenight'}

if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if has('nvim') || has("termguicolors")
    set termguicolors
endif


" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

set number 				    " show line numbers
set ruler				    " show location in file in down right corner

set nocompatible			" disable compatibility for old vi
set showmatch				" show matching parentheses

set hlsearch				" highlight search results
set incsearch				" move to search results while typing expression (like google chrome's find)

set tabstop=4				" set how many columns a tab character occupies
set softtabstop=4			" see multiple spaces as tabstops
set expandtab				" insert spaces when tab is pressed
set shiftwidth=4			" set how many spaces is used for indentation
set autoindent				" indent a new line the same amount as the line just typed

set wildmode=longest,list	" tab completions like bash

set mouse=a				    " enable mouse clicks
set clipboard=unnamedplus	" use system clipboard
set ttyfast				    " enable faster scrolling

set encoding=utf-8			" set the default encoding
set visualbell				" don't make sounds
syntax on				    " set syntax highlighting
