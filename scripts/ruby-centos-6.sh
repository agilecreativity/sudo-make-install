#!/bin/bash
set -e

# Create the place holder to hold the source code
export SRC_DEST=$HOME/src/ruby
mkdir -p $SRC_DEST

# The ruby version we like to use
RUBY_VERSION=2.2.5
RUBY_BINARY=ruby-$RUBY_VERSION.tar.gz

rm -rf $SRC_DEST/ruby-$RUBY_VERSION

echo "Downling the ruby binary please wait..."
curl -o $SRC_DEST/$RUBY_BINARY https://cache.ruby-lang.org/pub/ruby/2.2/$RUBY_BINARY
tar zxvf $SRC_DEST/$RUBY_BINARY -C $SRC_DEST

cd $SRC_DEST/ruby-$RUBY_VERSION
./configure
make
sudo make install
