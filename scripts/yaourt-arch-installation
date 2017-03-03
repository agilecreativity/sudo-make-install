#!/bin/bash
sudo pacman -S --needed wget base-devel yajl  # install if necessary
#I use the directory ~/temp/AUR/ to manually install AUR packages:
mkdir -p ~/temp/AUR/ && cd ~/temp/AUR/
#First, we install package-query…
wget https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz  # download source tarball
tar xfz package-query.tar.gz  # unpack tarball
cd package-query  &&  makepkg  # cd and create package from source
sudo pacman -U package-query*.pkg.tar.xz  # install package - need root privileges
#…and then Yaourt in the same way:
wget https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
tar xzf yaourt.tar.gz
cd yaourt  &&  makepkg
sudo pacman -U yaourt*.pkg.tar.xz
