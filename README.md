# ddns-obfs

使用腳本讓VPS自動更新DDNS
登入您的VPS終端，執行下列命令
##Debian/Ubuntu
apt-get update
apt-get install curl -y
##CentOS
yum update -y
yum install curl -y
使用CURL提交測試，注意修改您的信息
hostname=您申請的域名
password=您Dynu帳戶的IP密碼
curl "https://api.dynu.com/nic/update?hostname=您申請的域名&password=您Dynu帳戶的IP密碼"
## 返回下面信息表示成功 ##
good xxx.xxx.xxx.xxx (IP地址)
設定定時更新
crontab -e
按i进入编辑模式，貼上下方命令，並按esc一下，再输入:wq保存
*/1 * * * * curl "https://api.dynu.com/nic/update?hostname=您申請的域名&password=您Dynu帳戶的IP密碼"
 > /dev/null 2>&1
至此所有步驟完成，當IP變更時腳本會自動更新A紀錄指向您的域名
wget https://raw.githubusercontent.com/happy201807/docker-install-shadowsocks-libev/master/shadowsocks.sh && bash shadowsocks.sh

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


