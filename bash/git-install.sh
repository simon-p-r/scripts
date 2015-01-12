#!/bin/sh
echo "intalling git from source"
sudo yum groupinstall -y "Development Tools"
sudo yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel
wget https://github.com/git/git/archive/v2.1.2.tar.gz -O git.tar.gz
tar -zxf git.tar.gz
cd git-*
make configure
./configure --prefix=/usr/local
sudo make install
rm -rf git.tar.gz
rm -rf git-2.1.2
