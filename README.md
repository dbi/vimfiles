# Vimfiles

This project was made to make it easy to install my vim setup on a new computer.

## To install

    ln -s ~/whereveryouputit ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall
    cd ~/.vim/bundle/Command-T && rvm use system && rake make
