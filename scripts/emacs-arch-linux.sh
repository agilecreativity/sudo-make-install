#!/usr/bin/env bash
## Install latest Emacs from source (for the brave and true only)
## https://www.emacswiki.org/emacs/BuildingEmacs


## Make sure that we are on the most recent with other on Arch
sudo pacman -Syu

## Install some pre-requisite library if any
sudo pacman -S webkitgtk webkitgtk2 libpng libjpeg-turbo libtiff xaw3d \
    zlib libice libsm libx11 libxext libxi libxmu libxpm libxrandr libxt \
    libxtst libxv librsvg libtiff libxft gpm wxgtk wxsqlite3 sqlite3

## Build Emacs from source to the $HOME/emacs-xwidgets
## NOTE: the `--prefix=$HOME/emacs-xwidgets` is super important so that you
## you can still use your stable working Emacs version on your system.

## Get the official source!
#mkdir -p $HOME/git
#git clone git://git.savannah.gnu.org/emacs.git ~/git/emacs

cd $HOME/git/emacs
./autogen.sh
./configure --prefix=$HOME/emacs-xwidgets --with-gif \
                  --with-jpeg --with-png --with-rsvg \
                  --with-tiff --with-xft --with-xpm  \
                  --with-x-toolkit=gtk3 --with-gpm \
                  --with-dbus --with-xwidgets
make bootstrap
echo The next step is not strictly required
make check
make install

## You should now start your new Emacs with
#PATH=$HOME/emacs-xwidgets/bin:$PATH emacs

## Useful links
# https://github.com/jave/xwidget-emacs
# https://lists.gnu.org/archive/html/emacs-diffs/2014-12/msg00530.html

# Then from Emacs try with 'https://www.google.com'
# M-x xwidgets-browse-url

