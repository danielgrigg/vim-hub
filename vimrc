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
" Plugin 'scrooloose/syntastic' 

" http://vimawesome.com/plugin/ctrlp-vim-state-of-grace
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
" :help ctrlp-commands and :help ctrlp-extensions 
Plugin 'kien/ctrlp.vim' 

Plugin 'scrooloose/nerdcommenter' 

Plugin 'majutsushi/tagbar'

" http://vimawesome.com/plugin/ack-vim
Plugin 'mileszs/ack.vim'

" http://vimawesome.com/plugin/supertab
Plugin 'ervandew/supertab'

" http://vimawesome.com/plugin/easymotion
Plugin 'Lokaltog/vim-easymotion'

" http://vimawesome.com/plugin/vim-airline-sad-beautiful-tragic
Plugin 'bling/vim-airline'

" http://vimawesome.com/plugin/fsharp-vim-ours
" VIM RUNTIME FILES FOR F# (FSHARP)
Plugin 'kongo2002/fsharp-vim'

" http://vimawesome.com/plugin/python-mode
Plugin 'klen/python-mode'

" http://vimawesome.com/plugin/jedi-vim
Plugin 'davidhalter/jedi-vim'

" http://vimawesome.com/plugin/xmledit
Plugin 'sukima/xmledit'

" http://vimawesome.com/plugin/matchtag
Plugin 'gregsexton/MatchTag'

" http://vimawesome.com/plugin/matchit-zip
Plugin 'matchit.zip'

" http://vimawesome.com/plugin/vim-scala
Plugin 'derekwyatt/vim-scala'

Plugin 'othree/html5.vim'

Plugin 'othree/javascript-libraries-syntax.vim'

" Color schemes
"
" http://vimawesome.com/plugin/jellybeans-vim
" A colorful, dark color scheme, inspired by ir_black and twilight.
Plugin 'nanotech/jellybeans.vim'

" http://vimawesome.com/plugin/vim-colors-solarized-sparks-fly
Plugin 'altercation/vim-colors-solarized'

" http://vimawesome.com/plugin/molokai
Plugin 'tomasr/molokai'

" http://vimawesome.com/plugin/vividchalk-vim
Plugin 'tpope/vim-vividchalk'

" http://vimawesome.com/plugin/unite-colorscheme
Plugin 'ujihisa/unite-colorscheme'

" http://vimawesome.com/plugin/vim-tomorrow-theme-all-too-well
Plugin 'chriskempson/vim-tomorrow-theme'

" http://vimawesome.com/plugin/zenburn
Plugin 'Zenburn'

" http://vimawesome.com/plugin/hemisu-vim
Plugin 'noahfrederick/vim-hemisu'

Plugin 'wincent/Command-T'

" haskell
Plugin 'lukerandall/haskellmode-vim'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'

" gradle as groovy
Plugin 'tfnico/vim-gradle'

Plugin 'ekalinin/Dockerfile.vim'

Plugin 'moll/vim-node'

Plugin 'godlygeek/tabular'

Plugin 'pangloss/vim-javascript'

Plugin 'rust-lang/rust.vim'

Plugin 'nginx.vim'
Plugin 'maxmellon/vim-jsx-pretty'


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

colorscheme jellybeans

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

" Ack-vim http://vimawesome.com/plugin/ack-vim
" o    to open (same as enter)
" O    to open and close quickfix window
" go   to preview file (open but maintain focus on ack.vim results)
" t    to open in new tab
" T    to open in new tab silently
" h    to open in horizontal split
" H    to open in horizontal split silently
" v    to open in vertical split
" gv   to open in vertical split silently
" q    to close the quickfix window


" plugin tagbar
" Tagbar is a vim plugin for browsing the tags of source code files.
" http://vimawesome.com/plugin/tagbar

" plugin the-nerd-commenter
"
" http://vimawesome.com/plugin/the-nerd-commenter


" Airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2

" NERDTree
map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Syntastic
" https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
" let g:syntastic_python_checkers = ['frosted'] 
" let g:syntastic_html_tidy_exec = 'tidy5'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" MISC
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
:nmap \q :nohlsearch<CR>


" Wrap independent up/down
:nmap j gj
:nmap k gk

" File types
au BufNewFile,BufRead *.fsh,*.vsh,*.gl,*.glsl setlocal ft=glsl
au BufRead,BufNewFile *.fsx,*.fs set filetype=fsharp
au BufRead,BufNewFile *.json set filetype=javascript


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

"autocmd FileType py setlocal shiftwidth=4 tabstop=4 "shiftround

" haskellmode
au BufEnter *.hs compiler ghc
let g:haddock_browser="/Applications/Safari.app/Contents/MacOS/Safari"

au BufRead,BufNewFile *.rs set filetype=rust

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

nnoremap Q gq}

autocmd BufRead,BufNewFile *.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
        \ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
        \ textwidth=70 wrap formatoptions=tcqn
        \ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
        \ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>


