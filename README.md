# ddns-obfs

使用腳本讓VPS自動更新DDNS  

ddns.sh

编译安装shadowsocks-libev

shadowsocks.sh

wget  && bash shadowsocks.sh

编辑配置文件nano /etc/ss.json

安装BBR加速

wget --no-check-certificate https://www.rhce.net/linux/bbr.sh

chmod +x bbr.sh

./bbr.sh

重启

lsmod | grep bbr    查看是否加载

编译安装obfs

sudo yum install gcc autoconf libtool automake make zlib-devel openssl-devel asciidoc xmlto  -y

git clone https://github.com/shadowsocks/simple-obfs.git

git submodule update --init --recursive

./autogen.sh

./configure && make

make install

添加启动服务  进入/usr/lib/systemd/system增加shadowsocks.service文件

开机启动服务

systemctl daemon-reload

systemctl start shadowsocks.service

开机自启

systemctl enable shadowsocks.service


