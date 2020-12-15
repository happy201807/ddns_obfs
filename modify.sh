把RM2100_3.4.3.9-099.trx以及modify.rar内文件放在/root/firmware里

#775权限
chmod 775 -R /root/firmware

#进入目录
cd /root/firmware

#解包
./modify.sh e RM2100_3.4.3.9-099.trx

解出的文件在squashfs-root里

#重新封包为RM2100_3.4.3.9-099.trx
./modify.sh c RM2100_3.4.3.9-099.trx
