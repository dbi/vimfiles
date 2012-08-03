" Font: Choose font and enable anti-aliasing
set guifont=Monaco:h14
set antialias

" Hide toolbar and menus.
set guioptions-=T
set guioptions-=m

set fuoptions=maxvert,maxhorz                           " Maximize: Vert and Horiz by default
set guioptions-=rL                                      " Scrollbar is always off
set guioptions+=e                                       " Native style tab labels (this ones for you larry)
set guicursor=a:blinkon0                                " Don't flick cursor
set number                                              " Show line numbers

" http://vimcasts.org/episodes/show-invisibles/
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:»-,trail:·,extends:@,nbsp:≠
set list

colorscheme molokai
" colorscheme billskog_theme