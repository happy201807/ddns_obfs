##Debian/Ubuntu
apt-get update
apt-get install curl git

git clone https://github.com/timothymiller/cloudflare-ddns.git
cd cloudflare-ddns
cp config-example.json config.json
nano config.json  ##gist

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
docker pull timothyjmiller/cloudflare-ddns
nano docker-compose.yml


docker-compose up -d







免费版dynu 
curl "https://api.dynu.com/nic/update?hostname=您申請的域名&password=您Dynu帳戶的IP密碼"

## 返回下面信息表示成功 ##
good xxx.xxx.xxx.xxx (IP地址)


設定定時更新
crontab -e
按i进入编辑模式，貼上下方命令，並按esc一下，再输入:wq保存
*/1 * * * * curl "https://api.dynu.com/nic/update?hostname=您申請的域名&password=您Dynu帳戶的IP密碼"
 > /dev/null 2>&1
 
