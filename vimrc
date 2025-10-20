set number
set ruler
set autoindent
set expandtab
set tabstop=4 shiftwidth=4 noexpandtab smarttab
set smartindent
set textwidth=80
set nobackup
set noswapfile
set icon
set linebreak
set foldmethod=manual "zf/zd
set omnifunc=syntaxcomplete#Complete
set undodir=~/.vim/undodir
set undofile
set incsearch
set laststatus=2
set list
set listchars=tab:>-

filetype plugin on
syntax on

call plug#begin()

" List your plugins here
Plug 'koirand/tokyo-metro.vim'

call plug#end()

colorscheme tokyo-metro
