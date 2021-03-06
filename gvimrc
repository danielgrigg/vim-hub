" Platform Specific *****************************************************************
if has("gui_macvim")

  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
  set guifont=Source\ Code\ Pro\ Light:h12
  set guioptions-=T  " remove toolbar
  set stal=2 " turn on tabs by default

elseif has("gui_gtk2")

  set guioptions-=T  " remove toolbar

elseif has("x11")
elseif has("gui_win32")
end

" General *********************************************************************
set anti " Antialias font

"set transparency=0

" Default size of window
set columns=80 
set lines=40

" Tab headings 
set gtl=%t gtt=%F

set autochdir

