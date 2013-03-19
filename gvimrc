" Fullscreen
au VimEnter * set fullscreen

" Choose font and enable anti-aliasing
set guifont=Monaco:h14
set antialias

set fuoptions=maxvert,maxhorz                           " Maximize: Vert and Horiz by default
set guioptions-=T                                       " Hide toolbar
set guioptions-=m                                       " Hide menus
set guioptions-=rL                                      " Scrollbar is always off
set guioptions-=e                                       " No GUI tabs
set guicursor=a:blinkon0                                " Don't flick cursor

" Tabswitch shortcuts
map <silent> <D-A-Left> :tabprevious<CR>
map <silent> <D-A-Right> :tabnext<CR>
