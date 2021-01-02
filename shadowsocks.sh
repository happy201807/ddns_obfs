#!/bin/bash
#install dependencies
apt-get update
apt-get install pcre pcre-devel git gettext gcc autoconf libtool automake make asciidoc xmlto c-ares-devel libev-devel

export LIBSODIUM_VER=1.0.18
wget https://download.libsodium.org/libsodium/releases/libsodium-$LIBSODIUM_VER.tar.gz
tar xvf libsodium-$LIBSODIUM_VER.tar.gz
pushd libsodium-$LIBSODIUM_VER
./configure --prefix=/usr && make
make install
popd
ldconfig

export MBEDTLS_VER=2.16.6
wget https://tls.mbed.org/download/mbedtls-$MBEDTLS_VER-gpl.tgz
tar xvf mbedtls-$MBEDTLS_VER-gpl.tgz
pushd mbedtls-$MBEDTLS_VER
make SHARED=1 CFLAGS=-fPIC
make DESTDIR=/usr install
popd
ldconfig

# clean directory
rm -rf /tmp/shadowsocks-libev

# compile and install
cd /tmp
git clone https://github.com/shadowsocks/shadowsocks-libev.git
cd shadowsocks-libev
git submodule update --init --recursive
./autogen.sh
./configure
make
make install
cd ..
rm -rf /tmp/shadowsocks-libev
