# install Docker  

apt update && apt install curl

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

# run BBR plus

wget -N --no-check-certificate "https://raw.githubusercontent.com/ylx2016/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh

# aria2

wget -N --no-check-certificate https://raw.githubusercontent.com/happy201807/v2/main/aria2_install.sh && chmod +x aria2_install.sh && bash aria2_install.sh 


# WEB http server

cd /..

curl -fsSL https://raw.githubusercontent.com/smgoller/rangehttpserver/master/RangeHTTPServer.py | python

bt.cn

wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && bash install.sh

# iptables

wget https://raw.githubusercontent.com/happy201807/v2/main/iptables.sh && bash iptables.sh

@proxysu proxysu released this on 20 Nov 2020 
