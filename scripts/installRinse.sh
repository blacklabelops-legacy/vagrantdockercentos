#!/bin/bash

sudo yum install -y rpm rpm2cpio perl wget cpan perl-libwww-perl
wget http://collab-maint.alioth.debian.org/rinse/download/rinse_3.0.2.tar.gz
tar xfz rinse_3.0.2.tar.gz
rm -f rinse_3.0.2.tar.gz
cd rinse
sudo make install
cd ..
rm -rf rinse/
