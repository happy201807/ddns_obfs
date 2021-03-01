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

  wget -O web.tar.gz https://github.com/jiuqi9997/xray-yes/raw/main/web.tar.gz
  
    tar xzf web.tar.gz -C /www/xray_web
  
  judge "站点伪装" "web_camouflage"
  
  rm -f web.tar.gz
  
# xray start  

sudo systemctl start v2ray

sudo systemctl status v2ray
  

