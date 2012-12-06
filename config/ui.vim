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

colorscheme molokai
" colorscheme billskog_theme

" No bell sound
set vb

" Always display status bar
set laststatus=2


" Nice tabs
if exists("+showtabline")
  function MyTabLine()
    let s = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)
      let s .= '%' . i . 'T'
      let s .= (i == t ? '%1*' : '%2*')
      let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
      let file = bufname(buflist[winnr - 1])
      let file = fnamemodify(file, ':p:t')
      if file == ''
        let file = '<unsaved>'
      endif
      let s .= ' ' . file . ' '
      let s .= '%* '
      let i = i + 1
    endwhile
    let s .= '%T%#TabLineFill#%='
    return s
  endfunction
  set stal=1
  set tabline=%!MyTabLine()
endif

"Tabswitch shortcuts
map <silent> <D-A-Left> :tabprevious<CR>
map <silent> <D-A-Right> :tabnext<CR>

set showtabline=1
