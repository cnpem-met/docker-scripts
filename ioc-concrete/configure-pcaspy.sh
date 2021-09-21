#!/bin/bash

tar -xf swig-4.0.2.tar.gz
cp pcre-8.44.tar.bz2 swig-4.0.2

cd swig-4.0.2 && ./Tools/pcre-build.sh

./configure --prefix=/usr --without-maximum-compile-warnings && make

make install && install -v -m755 -d /usr/share/doc/swig-4.0.2 && cp -v -R Doc/* /usr/share/doc/swig-4.0.2

#export EPICS_BASE=/usr/local/epics/base

#pip3 install pcaspy
pip3 install xlrd pandas

cd /usr/apps/ && git clone https://github.com/lnls-gam/Concrete-Instrum-Scripts ioc-concrete
