#!/usr/bin/env bash

# clone
mkdir -p ~/apps
git clone https://github.com/powerline/fonts.git ~/apps/powerline--fonts --depth=1

# install
cd ~/apps/powerline--fonts
./install.sh

# clean-up a bit
rm -rf ~/apps/powerlines--fonts
