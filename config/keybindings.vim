nmap ö :
let mapleader = " "

" Syntax on (is diabled by default for non gui vim)
nmap <Leader>s :syntax on<CR>

" Navigation
nmap <Leader>t :CommandT<CR>
nmap <Leader>n :FufBuffer<CR>

" delete buffer from fuf list
let g:fuf_buffer_keyDelete = '<C-x>'

" search in open buffers
nmap <Leader>m :L9GrepBufferAll/

" jump to last file
nmap <Leader>b :b!#<CR>

" Jump to help topic
map <silent> å <C-]>

" Search
map <silent> ä :noh<CR>
map <leader>f :Ack 
map <leader>a :Ag<space>

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
cnoremap <c-f> <Right>
cnoremap <c-b> <Left>
cnoremap <c-d> <Del>
cnoremap <c-k> <c-e><c-u>

" Double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Jannes macro for grabbing line and file
nmap <Leader>l O<Esc>"%pA:<C-R>=line(".")<CR><Esc>0d$"_ddu

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Clear whitespace
map <silent> <Leader>w m`:%s/\s\+$//<CR>``
