#!/bin/bash
# See: https://www.digitalocean.com/community/tutorials/how-to-install-git-on-a-centos-6-4-vps
## Install pre-requisite library/tools
sudo yum groupinstall "Development Tools"
sudo yum install zlib-devel perl-ExtUtils-MakeMaker asciidoc xmlto openssl-devel curl-devel

## Download and extract the source
mkdir -p ~/src/git
cd ~/src/git
#wget -o ~/src/git/git.zip https://github.com/git/git/archive/master.zip
wget https://github.com/git/git/archive/master.zip
unzip master.zip 

## Build and install the source
cd ~/src/git/git-master
make configure
./configure --prefix=/usr/local
make all doc
sudo make install install-doc install-html
