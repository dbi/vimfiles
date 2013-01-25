" Font: Choose font and enable anti-aliasing
set guifont=Monaco:h14
set antialias

set fuoptions=maxvert,maxhorz                           " Maximize: Vert and Horiz by default
set guioptions-=T                                       " Hide toolbar
set guioptions-=m                                       " Hide menus
set guioptions-=rL                                      " Scrollbar is always off
set guioptions-=e                                       " No GUI tabs
set guicursor=a:blinkon0                                " Don't flick cursor

" http://vimcasts.org/episodes/show-invisibles/
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:»-,trail:·,extends:@,nbsp:≠
set list

colorscheme badwolf
" colorscheme molokai
" colorscheme billskog_theme

" No bell sound
set vb

" Always display status bar
set laststatus=2

"Tabswitch shortcuts
map <silent> <D-A-Left> :tabprevious<CR>
map <silent> <D-A-Right> :tabnext<CR>

set showtabline=1
