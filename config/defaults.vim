" Scrolling and mouse support in iTerm
set mouse=a
set ttymouse=xterm2

set hlsearch
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hidden
set number                              " Show line numbers

set clipboard=unnamed                   " Share clipboard
set wrap                                " Word wrap
set autoread                            " Load changes to files from external applications

scriptencoding utf-8                    " UTF8 All day, every day
set directory=/tmp/                     " Set temporary directory (don't litter local dir with swp/tmp files)
set gdefault                            " assume the /g flag on :s substitutions to replace all matches in a line:

set wildignore+=*.pyc,*.o,*.bundle      " Binary files
set scrolloff=3

" http://vimcasts.org/episodes/show-invisibles/
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:»-,trail:·,extends:@,nbsp:≠
set list

" No bell sound
set vb

" Display status bar with more than one split open
set laststatus=1

" Autosave on lost focus
autocmd FocusLost * silent! wall

nmap ö :
let mapleader = " "

" Jump to last file
nmap <Leader>b :b!#<CR>

" Jump to help topic
map <silent> å <C-]>

" Search
map <silent> ä :noh<CR>

" Quickfix navigation
map <silent> <Down>   :cn<CR>zz
map <silent> <Up>     :cp<CR>zz
map <silent> <Left>   :copen<CR><C-w>J
map <silent> <Right>  :cclose<CR>
map <silent> <C-Up>   :cpf<CR>zz
map <silent> <C-Down> :cnf<CR>zz

" Window navigation shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" emacs movement in insert/command mode
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A
cnoremap <c-a> <Home>
cnoremap <c-e> <End>
cnoremap <c-k> <c-e><c-u>

" Double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Jannes macro for grabbing line and file
nmap <Leader>l O<Esc>"%pA:<C-R>=line(".")<CR><Esc>0d$"_ddu

" Yank from the cursor to the end of the line, to be consistent with C and D
nnoremap Y y$

" Clear whitespace
map <silent> <Leader>w m`:%s/\s\+$//<CR>``

