sudo yum install gcc autoconf libtool automake make zlib-devel openssl-devel asciidoc xmlto  -y
git clone https://github.com/shadowsocks/simple-obfs.git
cd simple-obfs
git submodule update --init --recursive
./autogen.sh
./configure && make
make install
