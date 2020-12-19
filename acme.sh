手动安装脚本acme.sh

git clone https://github.com/Neilpang/acme.sh.git

cd acme.sh

./acme.sh --install


利用dnsapi dynu 申请ssl证书
Use Dynu API
First you need to create/obtain API credentials from your Dynu account. See: https://www.dynu.com/resources/api/documentation

export Dynu_ClientId="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
export Dynu_Secret="yyyyyyyyyyyyyyyyyyyyyyyyy"
Ok, let's issue a cert now:

acme.sh --issue --dns dns_dynu -d example.com -d www.example.com
The Dynu_ClientId and Dynu_Secret will be saved in ~/.acme.sh/account.conf and will be reused when needed.

手动申请ssl
sudo certbot --manual --preferred-challenges dns certonly

nslookup -q=TXT _acme-challenge.二级域名 1.1.1.1
