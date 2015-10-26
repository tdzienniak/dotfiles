#!/bin/bash
sudo apt-get install libncurses5-dev python-dev ruby-dev
./configure --with-features=huge --enable-multibyte --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config --enable-perlinterp --enable-luainterp --enable-gui=no --enable-cscope --prefix=/usr
sudo checkinstall -D --install=yes --pkgname='vim' --pkgversion='7.4' --pkglicense='Charityware' --maintainer='dzienniak.tymoteusz@gmail.com' --showinstall=no --default --fstrans=yes
