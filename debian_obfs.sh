# debian 系
sudo apt-get install --no-install-recommends build-essential autoconf libtool libssl-dev libpcre3-dev libev-dev asciidoc xmlto automake
# redhat 等其他系统请参照 github 官方 README

git clone https://github.com/shadowsocks/simple-obfs --depth=1


cd simple-obfs
git submodule update --init --recursive
./autogen.sh
./configure && make
sudo make install

#编译shadowsocks-libev
apt-get update && apt-get upgrade

apt-get install --no-install-recommends \
    gettext \
    build-essential \
    autoconf \
    libtool \
    libpcre3-dev \
    asciidoc \
    xmlto \
    libmbedtls-dev \
    libev-dev \
    libudns-dev \
    libc-ares-dev

 git clone https://github.com/jedisct1/libsodium.git
cd libsodium
./autogen.sh
./configure
make
make install

git clone https://github.com/shadowsocks/shadowsocks-libev.git
cd shadowsocks-libev
git submodule update --init --recursive
./autogen.sh
./configure
make
make install
