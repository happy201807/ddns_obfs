# debian 系
sudo apt-get install --no-install-recommends build-essential autoconf libtool libssl-dev libpcre3-dev libev-dev asciidoc xmlto automake
# redhat 等其他系统请参照 github 官方 README

git clone https://github.com/shadowsocks/simple-obfs --depth=1
## 这里多了几笔你可能没看到，注意去掉

cd simple-obfs
git submodule update --init --recursive
./autogen.sh
./configure && make
sudo make install
