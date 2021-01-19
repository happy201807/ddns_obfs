# Debian 
apt-get install --no-install-recommends build-essential autoconf libtool libssl-dev libpcre3-dev libev-dev asciidoc xmlto automake
# Ubuntu
sudo apt-get install --no-install-recommends build-essential autoconf libtool libssl-dev libpcre3-dev libev-dev asciidoc xmlto automake
# CentOS / Fedora / RHEL
sudo yum install gcc autoconf libtool automake make zlib-devel openssl-devel asciidoc xmlto libev-devel
# Arch
sudo pacman -Syu gcc autoconf libtool automake make zlib openssl asciidoc xmlto
# Alpine
apk add gcc autoconf make libtool automake zlib-dev openssl asciidoc xmlto libpcre32 libev-dev g++ linux-headers

git clone https://github.com/shadowsocks/simple-obfs.git
cd simple-obfs
git submodule update --init --recursive
./autogen.sh
./configure && make
make install
