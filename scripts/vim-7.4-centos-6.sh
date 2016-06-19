#!/bin/bash
# Build vim from source
# based on: http://vim.wikia.com/wiki/Building_Vim
# Adjust to make it work for CentOS

#sudo yum install lua-devel.x86_64 luaexpat.x86_64
#sudo yum install perl-devel.i686 libcurl-devel.i686

wget -O /tmp/vim-master.zip https://github.com/b4winckler/vim/archive/master.zip
unzip -o -d /tmp /tmp/vim-master.zip

# For better experience try install ruby, perl, python from source before
# running this script
## The result of the --with-python-config-dir is from `python3-config --configdir`

cd /tmp/vim-master/src
make distclean
./configure \
 --enable-multibyte \
 --enable-python3interp \
 --with-python3-config-dir=/usr/local/lib/python3.5/config-3.5m \
 --enable-rubyinterp \
 --with-ruby-command=/usr/local/bin/ruby \
 --with-lua-prefix=/usr \
 --enable-luainterp \
 --enable-cscope \
 --with-features=huge

make
sudo make install
