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

# @proxysu v2.4.24 proxysu released this on 20 Nov 2020 

# function configure_web() {

  rm -rf /www/xray_web
  mkdir -p /www/xray_web
  该处保留引用源
  wget -O web.tar.gz https://github.com/jiuqi9997/xray-yes/raw/main/web.tar.gz
  tar xzf web.tar.gz -C /www/xray_web
  judge "站点伪装"
  rm -f web.tar.gz
