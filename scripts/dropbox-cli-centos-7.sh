#!/usr/bin/env bash

## from: http://www.dropboxwiki.com/tips-and-tricks/install-dropbox-centos-gui-required
## Note: to be installed after Dropbox is already setup

## 1) install python
#sudo dnf install python

## 2) download and install official dropbox
mkdir -p ~/bin && wget -O ~/bin/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py" && chmod +x ~/bin/dropbox.py

## 3) turn on dropbox
~/bin/dropbox.py start

## 4) If this is a server, you want to prevent lan broadcasting so you don’t get in trouble with your VPS provider:
##    e.g. if you are on your personal laptop/workstation then you don't need to run the next line
#~/bin/dropbox.py lansync n

## 5) wait for dropbox to finish syncing your files
~/bin/dropbox.py status

## Note: if you this is still in progress you should see something like
# syncing (443 files remaining, 9 mins left)
# Downloading 443 files (3,905 KB/sec, 9 mins left)

## wait until you get something like
# ~/bin/dropbox.py status
# "Up to date"

## More tips from the same source
