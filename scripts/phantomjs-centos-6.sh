#!/bin/bash
# See: http://phantomjs.org/build.html
sudo yum -y install gcc \
                    gcc-c++ \
                    make \
                    flex \
                    bison \
                    gperf \
                    ruby \
                    openssl-devel \
                    freetype-devel \
                    fontconfig-devel \
                    libicu-devel \
                    sqlite-devel \
                    libpng-devel \
                    libjpeg-devel

mkdir -p ~/src/phantomjs

git clone git://github.com/ariya/phantomjs.git ~/src/phantomjs

cd ~/src/phantomjs

git checkout 2.1.1
git submodule init
git submodule update

python build.py
