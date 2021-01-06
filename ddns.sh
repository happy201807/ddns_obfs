##Debian/Ubuntu
apt-get update
apt-get install curl git







免费版dynu 
curl "https://api.dynu.com/nic/update?hostname=您申請的域名&password=您Dynu帳戶的IP密碼"

## 返回下面信息表示成功 ##
good xxx.xxx.xxx.xxx (IP地址)


設定定時更新
crontab -e
按i进入编辑模式，貼上下方命令，並按esc一下，再输入:wq保存
*/1 * * * * curl "https://api.dynu.com/nic/update?hostname=您申請的域名&password=您Dynu帳戶的IP密碼"
 > /dev/null 2>&1
 
30 06 * * * /sbin/wifi up  #每天6：30开启所有无线
59 23 * * * /sbin/wifi down #每天晚上23点关闭
