v2-plugin


CentOS 7.0

使用腳本讓VPS自動更新DDNS  

ddns.sh

Docker  

 yum/apt update && yum/apt install curl

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

acme.sh

git clone https://github.com/Neilpang/acme.sh.git

cd acme.sh

./acme.sh --install


Use Dynu API
First you need to create/obtain API credentials from your Dynu account. See: https://www.dynu.com/resources/api/documentation

export Dynu_ClientId="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
export Dynu_Secret="yyyyyyyyyyyyyyyyyyyyyyyyy"
Ok, let's issue a cert now:

acme.sh --issue --dns dns_dynu -d example.com -d www.example.com
The Dynu_ClientId and Dynu_Secret will be saved in ~/.acme.sh/account.conf and will be reused when needed.

编译安装shadowsocks-libev

shadowsocks.sh

wget https://raw.githubusercontent.com/happy201807/ddns-obfs/main/shadowsocks.sh && bash shadowsocks.sh


编辑配置文件  nano /etc/ss.json

ss.json


安装BBR加速

wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh


编译安装obfs

obfs.sh


添加启动服务   

nano /usr/lib/systemd/system/shadowsocks.service

shadowsocks.service


开机自启动服务

systemctl daemon-reload

systemctl start shadowsocks.service

开机自启

systemctl enable shadowsocks.service


