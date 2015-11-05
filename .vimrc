" This is my vimrc file
" Will add some goodness later

set nocompatible
set runtimepath+=~/.vim/plugged/vim-plug
set encoding=utf-8

"So lets install some goodness here

let vimplug=expand('~/.vim/bundle/vim-plug/plug.vim')
if !filereadable(vimplug)
	echo "Instaling vim-plug..."
	echo ""
	silent !mkdir -p ~/.vim/
	silent !git clone https://github.com/junegunn/vim-plug.git ~/.vim/bundle/vim-plug
	let g:first_time_run=1
endif

" Scotty, beam me up!
source ~/.vim/bundle/vim-plug/plug.vim

" Install what we need
call plug#begin('~/.vim/plugged')

" Install core dev stuff
"
" Suppa generic stuff
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'bogado/file-line'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
"Plug 'Townk/vim-autoclose'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'

" HTML/CSS and JS stuff
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'matchit.zip'
Plug 'gorodinskiy/vim-coloresque'

" Python dev
Plug 'klen/python-mode'
Plug 'fisadev/vim-isort'
Plug 'alfredodeza/pytest.vim'
Plug 'hdima/python-syntax'
"Plug 'mindriot101/vim-yapf'
Plug 'airblade/vim-gitgutter'

" Vim Buffer/Window/Tab Management
Plug 'kien/tabman.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'

" Code Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Cool git stuff
Plug 'tpope/vim-fugitive'

" Solarized Color Scheme
Plug 'altercation/vim-colors-solarized'

Plug 'marciomazza/vim-autopep8'

Plug 'scrooloose/nerdtree'

Plug 'terryma/vim-multiple-cursors'

Plug 'vim-scripts/grep.vim'

Plug 'fisadev/dragvisuals.vim'

Plug 'fisadev/fisa-vim-colorscheme'

Plug 'fisadev/FixedTaskList.vim'

Plug 'fisadev/vim-ctrlp-cmdpalette'

Plug 'fisadev/vim-debug.vim'

Plug 'fisadev/vim-isort'

Plug 'garbas/vim-snipmate'

Plug 'gmarik/vundle'

Plug 'honza/vim-snippets'

Plug 'IndexedSearch'

Plug 'kien/ctrlp.vim'

Plug 'majutsushi/tagbar'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'matchit.zip'

Plug 'mhinz/vim-signify'

Plug 'michaeljsmith/vim-indent-object'

Plug 'motemen/git-vim'

Plug 'rosenfeld/conque-term'

Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/syntastic'

Plug 'Shougo/neocomplcache.vim'

Plug 't9md/vim-choosewin'

Plug 'tomtom/tlib_vim'

Plug 'tpope/vim-surround'

Plug 'Wombat'

Plug 'YankRing.vim'

Plug 'tmhedberg/SimpylFold'

Plug 'vim-scripts/indentpython.vim'

Plug 'suan/vim-instant-markdown'

call plug#end()

if exists('g:first_time_run')
	PlugUpdate
endif

"Let's configure the mess
" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpyFold_docstring_preview=1
autocmd BufWinEnter *.py setlocal foldexpr=SimpyFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
"nnoremap <space> za
"
"
"
"Helping Python Indentation
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix
	\ match BadWhitespace /\s\+$/

" Fix backspace indent
set backspace=indent,eol,start

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Encoding
set bomb
set binary
set ttyfast

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

" Reload files automatically
set autoread

"" Visual Settings
syntax on
set ruler
set number

"" Configuring vim-instant-markdown"
let g:instant_markdown_autostart=0

"" Configuring darksolarized colorscheme
set term=screen-256color-bce
let no_buffers_menu=1
set t_Co=256
set background=dark
colorscheme solarized

set mousemodel=popup
set nocursorline


"" Status Bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
	set statusline+=%{fugitive#statusline()}
endif

" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set ttimeoutlen=50

"" Abbreviations

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

