#!/bin/bash
## from: https://github.com/howardabrams/dot-files/blob/master/emacs.org
## Note: get see full list of options try
## $brew options emacs # learn about each options on OSX, try
## $brew search <option-name> && brew info <option-name>
## e.g. $brew search gnutls && brew info gnutls

## Useful options to try:
# --with-glib    # developer.gnome.org/glib
# --with-gnutls  # gnutls.org -> GnuTLS - transport layer security library
# --with-librsvg # live.gnome.org/libRsvg
# $brew info librsvg # then you may like to run
# $brew install librsvg --with-gtk+3 --with-lbgsf
## https://developer.gnome.org/gsf/
## https://developer.gnome.org/gtk3/
## http://mailutils.org/ --with-mailutils
# 1) First make sure we are up to date
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

## 2) Install the emacs's dependency
brew cask install xquartz
#brew install imagemagick --with-ghostscript --HEAD
#brew install librsvg --with-gtk+3 --with-lbgsf
## 3) Build emacs from source for the Mac

brew install emacs --HEAD \
                   --use-git-head \
                   --with-cocoa \
                   --with-gnutls \
                   --srgb \
                   --with-librsvg \
                   --with-mailutils \
                   --with-ns \
                   --with-x11
# 4) Finally links the apps
brew linkapps emacs

# 5) Optional, to always start Emacs try `brew services start emacs` on the background
