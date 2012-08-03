set nocompatible

source ~/.vim/config/bundles.vim
source ~/.vim/config/bundles_config.vim
source ~/.vim/config/auto_commands.vim
source ~/.vim/config/keybindings.vim
source ~/.vim/config/global.vim

if filereadable(expand("~/.vim/custom_vimrc"))
  source ~/.vim/custom_vimrc
endif
