" Command-T
autocmd FocusGained * :CommandTFlush
let g:CommandTMaxHeight=20

" Auto remove fudgitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Ag
noremap <leader>a :Ag<space>
let g:agprg="ag -S --nocolor --nogroup --column"

" Rails config
autocmd User Rails set wildignore+=public/assets/**,vendor/**,log/**,tmp/**
autocmd User Rails map <silent> <Leader>s :vsplit<CR>:A<CR>
autocmd User Rails map <silent> <Leader>d :q<CR>:vsplit<CR>:A<CR>

" Gundo
let g:gundo_close_on_revert = 1

" Vim commentary
map cc gcc

" Hide .pyc files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

" CtrlP
let g:ctrlp_max_files = 10000
let g:ctrlp_user_command = {
                        \ 'types': { 1: ['.git/', 'cd %s && git ls-files'] },
                        \ 'fallback': 'find %s -type f | head -' . g:ctrlp_max_files
                        \ }
