filetype off                                        " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required by vundle)
Bundle 'gmarik/vundle'

Bundle 'cakebaker/scss-syntax.vim'
Bundle 'dbi/vim-hybrid'
Bundle 'epmatsw/ag.vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'teoljungberg/vim-grep'
Bundle 'terryma/vim-expand-region'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wincent/Command-T'

" vim-scripts repos
Bundle 'FuzzyFinder'
Bundle 'L9'
" Bundle 'vim-scripts/django.vim'
Bundle "ack.vim"

filetype plugin indent on                           " required!


" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- BUNDLE CONFIGS -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- "


" Auto remove fudgitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Ag
noremap <leader>a :Ag<space>
let g:agprg="ag -S --nocolor --nogroup --column"

" Gundo
let g:gundo_close_on_revert = 1

" Hide .pyc files in NERDTree
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeMinimalUI = 1

" CtrlP
let g:ctrlp_max_files = 10000
let g:ctrlp_user_command = {
                        \ 'types': { 1: ['.git/', 'cd %s && git ls-files'] },
                        \ 'fallback': 'find %s -type f | head -' . g:ctrlp_max_files
                        \ }
let g:ctrlp_custom_ignore = {
                        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
                        \ }

" FuzzyFinder
nmap <Leader>n :FufBuffer<CR>
let g:fuf_buffer_keyDelete = '<C-x>' " delete buffer from fuf list

" L9
nmap <Leader>m :L9GrepBufferAll/

" Rails config
autocmd User Rails set wildignore+=public/assets/**,vendor/**,log/**,tmp/**
