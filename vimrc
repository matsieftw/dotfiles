set nocompatible         
filetype off            

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'edkolev/tmuxline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mxw/vim-jsx'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'ap/vim-css-color'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-bufferline'
Plugin 'edkolev/promptline.vim'
Plugin 'lifepillar/vim-mucomplete'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on
set t_Co=256
colorscheme evolution
syntax on
set clipboard+=unnamed
set noeol
set nohlsearch
set showmatch
set ic
set ai
set viminfo='20
set splitright
syntax on
filetype on
filetype indent on
hi Comment ctermfg=blue
map <C-J> <C-W>j <C-W>_
map <C-K> <C-W>k <C-W>_
com W :w
com Q :q
com WQ :wq
com Wq :wq
set tabstop=2 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd StdinReadPre * let s:std_in=1
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
let macvim_skip_colorscheme = 1
set relativenumber
set number
set backspace=indent,eol,start
set ruler
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
set runtimepath^=~/.vim/bundle/ctrlp.vim
set conceallevel=1
let g:syntastic_always_populate_loc_list = 1
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 1
au BufRead,BufEnter,BufNewFile * IndentLinesReset
" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='jellybeans'
set laststatus=2
let g:bufferline_echo = 0
set noshowmode
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.space = "\ua0"
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
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '▶',
    \ 'right' : '',
    \ 'right_alt' : '◀',
    \ 'space' : ' '}
