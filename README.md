v2-plugin TLS


ENV  Debian 9

使用腳本讓VPS自動更新DDNS  

ddns.sh


安装Docker  

apt update && apt install curl

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

docker pull acrisliu/shadowsocks-libev

docker run.yml

（停止并重新运行docker）

docker stop ID

docker container rm $(docker container ps -aq)





安装暴力BBR加速

wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh





