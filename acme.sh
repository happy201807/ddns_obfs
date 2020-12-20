手动安装脚本acme.sh

git clone https://github.com/Neilpang/acme.sh.git

cd acme.sh

./acme.sh --install


利用dns手动模式 申请ssl证书

1.First step:
acme.sh --issue -d example.com --dns \
 --yes-I-know-dns-manual-mode-enough-go-ahead-please
 
2.Please add the TXT record to your DNS records. This step is required every time you renew your certificate. 


3.Now retry with command.--renew

acme.sh --renew -d example.com \
  --yes-I-know-dns-manual-mode-enough-go-ahead-please
