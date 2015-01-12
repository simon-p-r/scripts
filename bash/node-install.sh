#!/bin/sh
echo "installing node from source"
wget http://nodejs.org/dist/v0.11.14/node-v0.11.14.tar.gz -O node.tar.gz
tar -zxf node.tar.gz
cd node-v0.11.14
./configure --prefix=/usr/local
make
sudo make install
rm -rf node.tar.gz
rm -rf node-v0.11.14
