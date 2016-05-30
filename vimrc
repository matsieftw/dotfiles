set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'shemerey/vim-peepopen'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'TownK/vim-autoclose'
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-bufferline'
Plugin 'mattn/emmet-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Yggdroot/indentLine'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
set t_Co=256
colorscheme evolution
syntax on
set expandtab
set tabstop=2
set clipboard+=unnamed
autocmd StdinReadPre * let s:std_in=1
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
let macvim_skip_colorscheme = 1
set relativenumber
set number
set backspace=indent,eol,start
set ruler
