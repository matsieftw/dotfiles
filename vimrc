" vundle set up
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-speeddating'
Plugin 'airblade/vim-gitgutter'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/syntastic'
Plugin 'edkolev/tmuxline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ap/vim-css-color'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'sheerun/vim-polyglot'
Plugin 'bronson/vim-trailing-whitespace'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" Colors
set t_Co=256
colorscheme evolution
hi Comment ctermfg=blue
let macvim_skip_colorscheme = 1

" General Editor Settings
set noeol
set nohlsearch
set showmatch
set ic
set ai
set viminfo='20
set splitright
set number
set relativenumber
set backspace=indent,eol,start
set ruler

" Syntax and tabbing
syntax on
set expandtab
filetype plugin indent on
au Filetype * set ts=2 sts=2 sw=2
au FileType python set ts=4 sts=4 sw=4 nosmartindent
au FileType ruby set ts=2 sts=2 sw=2 nosmartindent
au FileType php set ts=2 sts=2 sw=2
au FileType html set ts=2 sts=2 sw=2
au FileType javscript set ts=2 sts=2 sw=2
au FileType xhtml set ts=2 sts=2 sw=2
au FileType css set ts=2 sts=2 sw=2
au FileType sh set ts=2 sts=2 sw=2 nosmartindent
au FileType xml set ts=2 sts=2 sw=2

" Keyboard Mapping
map <C-J> <C-W>j <C-W>_
map <C-K> <C-W>k <C-W>_
autocmd StdinReadPre * let s:std_in=1
command WQ wq
command Wq wq
command W w
command Q q


if &term =~ '^screen'
" tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" copy and paste to clipboard
if has('clipboard')
        if has('unnamedplus')  " When possible use + register for copy-paste
            set clipboard=unnamed,unnamedplus
        else         " On mac and Windows, use * register for copy-paste
            set clipboard=unnamed
        endif
endif

" Plugin Specific Settings

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers=['eslint']

" indentline
au BufRead,BufEnter,BufNewFile * IndentLinesReset
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 1
let g:indentLine_enabled = 1
set conceallevel=1

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='vice'
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
set noshowmode
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" tmuxline
let g:tmuxline_preset = {
      \'a'    : '#{?client_prefix,#[reverse]<Prefix>#[noreverse] ,}',
      \'b'    : '#(whoami)',
      \'c'    : '#h',
      \'win'    : ['#I', '#W'],
      \'cwin'    : ['#I', '#W', '#F'],
      \'y'    : ['%a, %b %d'],
      \'z'    : '%R',
      \'options' : {
      \'status-justify': 'left'}
      \}
