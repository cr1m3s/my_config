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

"" let g:seoul256_background = 233
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"" colorscheme seoul256
" Install vim-plug if not already installed " (Yes I know about Vim 8 Plugins. They suck.) 
if empty(glob('~/.vim/autoload/plug.vim'))   
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim   
    autocmd VimEnter * PlugInstall 
endif

if filereadable(expand("~/.vim/autoload/plug.vim"))   
    call plug#begin('~/.vimplugins')
	Plug 'sheerun/vim-polyglot'
    Plug 'preservim/nerdtree'
	Plug 'junegunn/seoul256.vim'
    Plug 'vim-pandoc/vim-pandoc'   
    Plug 'ghifarit53/tokyonight-vim'
	Plug 'https://gitlab.com/rwxrob/vim-pandoc-syntax-simple'   
    Plug 'cespare/vim-toml'   
    Plug 'fatih/vim-go'   
    Plug 'vim-utils/vim-man'
    "" Plug 'git@github.com:Valloric/YouCompleteMe.git'
    Plug 'airblade/vim-gitgutter'   
    Plug 'PProvost/vim-ps1'   "Plug 'morhetz/gruvbox'   
    Plug 'https://github.com/itchyny/lightline.vim'
    Plug 'https://github.com/w0rp/ale'
    Plug 'https://github.com/jaxbot/semantic-highlight.vim'
    Plug 'https://github.com/nathanaelkane/vim-indent-guides'
    Plug 'preservim/tagbar'
    call plug#end()   
    let g:go_fmt_fail_silently = 0 " let me out even with errors   
    let g:go_fmt_command = 'goimports' " autoupdate import   
    let g:go_fmt_autosave = 1   
    let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ }
else   
    autocmd vimleavepre *.go !gofmt -w % " backup if fatih fails 
endif
colorscheme tokyonight
autocmd VimEnter * NERDTree
let g:indent_guides_enable_on_vim_startup = 1
