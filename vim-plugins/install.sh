#!/bin/sh

test -d $HOME/.vim && mv $HOME/.vim $HOME/.vimbackup

git clone http://github.com/luan/vimfiles.git $HOME/.vim
$HOME/.vim/install
