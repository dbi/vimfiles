set nocompatible

source ~/.vim/config/defaults.vim
source ~/.vim/config/bundles.vim
source ~/.vim/config/tabline.vim
runtime macros/matchit.vim

syntax on
colorscheme hybrid

filetype plugin indent on
set backspace=indent,eol,start " to make backspace work in terminal
