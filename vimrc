set nocompatible

call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ap/vim-css-color'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'tpope/vim-vinegar'
call plug#end()

" Colors
set t_Co=256
hi Comment ctermfg=blue
let macvim_skip_colorscheme = 1

" General Editor Settings
set noeol
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
set expandtab
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

" copy and paste to clipboard
if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
      set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
      set clipboard=unnamed
  endif
endif

" Plugin Specific Settings

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" ctrlP
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
set wildignore+=*/.git/*,*/tmp/*,*.swp

" indentline
au BufRead,BufEnter,BufNewFile * IndentLinesReset
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 1
let g:indentLine_enabled = 1
set conceallevel=1

" ale
let g:ale_sign_error = '💩'
let g:ale_sign_warning = '💩'
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t:r'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_theme='violet'
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_powerline_fonts = 1
set noshowmode
set laststatus=2

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
