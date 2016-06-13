#!/bin/bash
mkdir -p /tmp
wget -O /tmp/python.tar.gz https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz
cd /tmp && tar zxvf /tmp/python.tar.gz
cd /tmp/Python-3.5.1

./configure
make
sudo make install
