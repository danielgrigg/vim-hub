set nocompatible
filetype off

" Vundle stuff
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'      

" http://vimawesome.com/plugin/syntastic
Plugin 'scrooloose/syntastic' 

" http://vimawesome.com/plugin/ctrlp-vim-state-of-grace
Plugin 'kien/ctrlp.vim' 

" http://vimawesome.com/plugin/syntastic
Plugin 'scrooloose/nerdcommenter' 

" http://vimawesome.com/plugin/syntastic
Plugin 'majutsushi/tagbar'

" http://vimawesome.com/plugin/ack-vim
Plugin 'mileszs/ack.vim'

" http://vimawesome.com/plugin/supertab
Plugin 'ervandew/supertab'

" http://vimawesome.com/plugin/easymotion
Plugin 'Lokaltog/vim-easymotion'

" http://vimawesome.com/plugin/vim-airline-sad-beautiful-tragic
Plugin 'bling/vim-airline'

" all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ

" Terminal settings
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
	set t_Co=256
endif


" Colors
"colorscheme zenburn

" Settings
syntax enable
set incsearch
set ignorecase
set smartcase
set hlsearch
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set autochdir
set clipboard=unnamed
set nowrap
" set spell " use ]s and [s to navigate

" Key bindings

" NERDTree
map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Syntastic
" https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
let g:syntastic_python_checkers = ['frosted'] 

" MISC
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
:nmap \q :nohlsearch<CR>

" Wrap independent up/down
:nmap j gj
:nmap k gk

" Play nicely with others, even if they're wrong ;)
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" File types
au BufNewFile,BufRead *.fsh,*.vsh,*.gl,*.glsl setlocal ft=glsl

" Insert newline then return to command mode
map <CR> o<Esc>

nnoremap <C-J> a<CR><Esc>k$


" python mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

autocmd FileType py setlocal shiftwidth=4 tabstop=4 shiftround
