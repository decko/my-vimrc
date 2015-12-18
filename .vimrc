" This is my vimrc file
" Will add some goodness later

set nocompatible
set runtimepath+=~/.vim/plugged/vim-plug
set encoding=utf-8
filetype off
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
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'davidhalter/jedi-vim'
Plug 'fisadev/vim-isort'
Plug 'alfredodeza/pytest.vim'
Plug 'hdima/python-syntax'
"Plug 'mindriot101/vim-yapf'
Plug 'vim-scripts/indentpython.vim'
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'lepture/vim-jinja', {'for': 'jinja'}

Plug 'airblade/vim-gitgutter'

" Vim Buffer/Window/Tab Management
Plug 'kien/tabman.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'

" Code Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Cool git stuff
Plug 'tpope/vim-fugitive'

" Solarized Color Scheme
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'fisadev/vim-ctrlp-cmdpalette'
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'


Plug 'marciomazza/vim-autopep8'


Plug 'terryma/vim-multiple-cursors'

Plug 'vim-scripts/grep.vim'

Plug 'fisadev/dragvisuals.vim'


Plug 'gmarik/vundle'

Plug 'IndexedSearch'


Plug 'majutsushi/tagbar'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'matchit.zip'

Plug 'mhinz/vim-signify'

Plug 'michaeljsmith/vim-indent-object'

Plug 'motemen/git-vim'

Plug 'rosenfeld/conque-term'



Plug 'scrooloose/syntastic'


Plug 't9md/vim-choosewin'

Plug 'tomtom/tlib_vim'

Plug 'tpope/vim-surround'

Plug 'tmhedberg/SimpylFold'

Plug 'suan/vim-instant-markdown'

call plug#end()

if exists('g:first_time_run')
	PlugUpdate
endif

" filetype plugin indent on
" syntax on

"Let's configure the mess
" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpyFold_docstring_preview=1
autocmd BufWinEnter *.py setlocal foldexpr=SimpyFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

" And enable some exceptions
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

"Helping Python Indentation
highlight BadWhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.py 
	\ setlocal tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ textwidth=79
	\ expandtab
	\ autoindent
	\ fileformat=unix

au BufNewFile,BufRead *.py match BadWhitespace /\s\+$/

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

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3



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

" Configuring UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" " Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"     " Plugin key-mappings.
    inoremap <expr><C-g>     neocomplete#undo_completion()
    inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"" Recommended key-mappings.
" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "   "return pumvisible() ? "\<C-y>" : "\<CR>"
  "   endfunction
  "   " <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  "   " <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  "   " Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

let g:neocomplete#enable_auto_select = 1

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal omnifunc=jedi#completions

let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"

if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'


let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>


"""*****************************************************************************
"" Mappings
"""*****************************************************************************
""" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" ctrlp.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_map = '<leader>e'
let g:ctrlp_open_new_file = 'r'

"" Buffer nav
noremap <S-Tab>   :bp<CR>
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>

noremap <Tab>     :bn<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>"

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autoclose = 1

" supertab
let g:SuperTabDefaultCompletionType = "context"

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Enable doctring preview for folded code.
let g:SimpylFold_docstring_preview=1

" Map Capslock 
au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
