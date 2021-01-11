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

假设域名为xxx.club,打开电脑“开始”——“运行”，输入cmd后按回车键，输入：nslookup（空格）-qt=txt（空格）xxx.club 后按回车键，若出现TXT记录值，则代表已生效，否则代表未解析成功。
