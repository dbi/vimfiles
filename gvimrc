au VimEnter * set fullscreen

source ~/.vim/config/ui.vim

if filereadable(expand("~/.vim/custom_gvimrc"))
  source ~/.vim/custom_gvimrc
endif
