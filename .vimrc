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
Plug 'mattn/emmet-vim'
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

"Plug 'amirh/HTML-AutoCloseTag'








"Plug 'luochen1990/rainbow'


Plug 'marciomazza/vim-autopep8'



Plug 'scrooloose/nerdtree'



Plug 'terryma/vim-multiple-cursors'



"Plug 'tpope/vim-haml'

"Plug 'tpope/vim-surround'

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


"Plug 'klen/python-mode'

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

