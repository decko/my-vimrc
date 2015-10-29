" This is my vimrc file
" Will add some goodness later

set nocompatible
set runtimepath+=~/.vim/plugged/vim-plug
set encoding=utf-8

"So lets install some goodness here

let vimplug_readme=expand('~/.vim/plugged/vim-plug/README.md')
if !filereadable(vimplug_readme)
	echo "Instaling vim-plug..."
	echo ""
	silent !mkdir -p ~/.vim/autoload
	silent !git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug
	source ~/.vim/plugged/vim-plug/plug.vim
endif

filetype off

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'

Plug 'alfredodeza/pytest.vim'

Plug 'amirh/HTML-AutoCloseTag'

Plug 'bling/vim-airline'

Plug 'bogado/file-line'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'davidhalter/jedi-vim'

Plug 'ervandew/supertab'

Plug 'fisadev/vim-isort'

Plug 'gorodinskiy/vim-coloresque'

Plug 'hail2u/vim-css3-syntax'

Plug 'hdima/python-syntax'

Plug 'honza/vim-snippets'

Plug 'jiangmiao/auto-pairs'

Plug 'luochen1990/rainbow'

Plug 'majutsushi/tagbar'

Plug 'marciomazza/riv.vim'

Plug 'marciomazza/vim-autopep8'

Plug 'marciomazza/vim-brogrammer-theme'

Plug 'mattn/emmet-vim'

Plug 'mindriot101/vim-yapf'

Plug 'ntpeters/vim-better-whitespace'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/syntastic'

Plug 'sheerun/vim-polyglot'

Plug 'Shougo/vimproc.vim'

Plug 'Shougo/vimshell.vim'

Plug 'SirVer/ultisnips'

Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-haml'

Plug 'tpope/vim-surround'

Plug 'vim-scripts/CSApprox'

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

Plug 'kien/tabman.vim'

"Plug 'klen/python-mode'

Plug 'lilydjwg/colorizer'

Plug 'majutsushi/tagbar'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'matchit.zip'

Plug 'mattn/emmet-vim'

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

Plug 'Townk/vim-autoclose'

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

