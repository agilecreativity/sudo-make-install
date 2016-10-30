#!/usr/bin/env bash
## based on: http://www.dropboxwiki.com/tips-and-tricks/install-dropbox-centos-gui-required

## for 32 bits, uncomment the next line
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -

## for 64 bits, use the next line
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

## Run and link your Dropbox account (continue in the gui to complete the installation)
~/.dropbox-dist/dropboxd
