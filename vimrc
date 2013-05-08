execute pathogen#infect()
syntax on
filetype plugin indent on

" Terminal settings
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
	set t_Co=256
endif

" Colors
colorscheme zenburn

" Settings
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:set expandtab tabstop=2 shiftwidth=2 softtabstop=2
:set autochdir
set clipboard=unnamed
set nowrap
" set spell " use ]s and [s to navigate

" Key bindings
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
:nmap \q :nolsearch<CR>

" Wrap independent up/down
:nmap j gj
:nmap k gk

" Play nicely with others, even if they're wrong ;)
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" Emacs bindings oh my!
:cnoremap <C-a>  <Home>
:cnoremap <C-b>  <Left>
:cnoremap <C-f>  <Right>
:cnoremap <C-d>  <Delete>
:cnoremap <M-b>  <S-Left>
:cnoremap <M-f>  <S-Right>
:cnoremap <M-d>  <S-right><Delete>
:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>
:cnoremap <Esc>d <S-right><Delete>
:cnoremap <C-g>  <C-c>

" File types
au BufNewFile,BufRead *.fsh,*.vsh,*.gl,*.glsl setlocal ft=glsl

" Insert newline then return to command mode
map <CR> o<Esc>

nnoremap <C-J> a<CR><Esc>k$
