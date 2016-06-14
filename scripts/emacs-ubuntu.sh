#!/usr/bin/env bash
## from: http://askubuntu.com/questions/437255/how-to-install-emacs-24-4-on-ubuntu
mkdir -p ~/src/emacs-src && cd ~/src/emacs-src
wget http://mirror.team-cymru.org/gnu/emacs/emacs-24.5.tar.gz
tar xvf emacs-24.5.tar.gz

sudo apt-get install build-essential
sudo apt-get build-dep emacs24

cd emacs-24.5
./configure
make
sudo make install
