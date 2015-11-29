#!/usr/bin/env bash

root=$(pwd)

cat bashrc > ${HOME}/.bashrc

cat gitconfig > ${HOME}/.gitconfig

# emacs
wget 'http://ftp.twaren.net/Unix/GNU/gnu/emacs/emacs-24.5.tar.gz'
tar xf emacs-24.5.tar.gz
sudo yum install ncurses-devel -y
cd $root/emacs-24.5/
./configure --prefix=/usr/local --without-x
make
sudo make install
rm -rf ${HOME}/.emacs*
cd ${HOME}
git clone https://github.com/qianwan/emacs.d.git .emacs.d
cd ${HOME}
emacs --script .emacs.d/init.el
