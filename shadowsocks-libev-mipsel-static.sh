构建固件asuswrt-xiaomi
sudo apt-get install libncurses5 libncurses5-dev m4 bison gawk flex libstdc++-4.8-dev g++-multilib g++ gengetopt git gitk zlib1g-dev autoconf autopoint libtool shtool autogen mtd-utils intltool sharutils docbook-xsl-* libstdc++5 texinfo dos2unix xsltproc binutils u-boot-tools device-tree-compiler python qemu gperf liblzo2-dev uuid-dev build-essential lzma-dev liblzma-dev lzma patch cmake intltool libglib2.0-dev gtk-doc-tools libc6-i386 lib32stdc++6 lib32z1 libelf1:i386 lib32ncurses5 libc6-dev-i386
git clone https://gitee.com/ferhung-mtk/asuswrt_RM2100.git
cd asuswrt_RM2100
./build

在tomatoware编译shadowsocks-libev
To install it:
sudo mkdir /opt/tomatoware
sudo chmod 777 /opt/tomatoware
tar zxvf mipsel-soft-mmc.tgz -C /opt/tomatoware
Then add /opt/tomatoware/mipsel-soft-mmc/bin to you PATH.
Then clone this repo, I've just updated all the packages to their latest versions.
Then go into folder and run ./shadowsocks-libev.sh
Final binaries can be found in ~/shadowsocks-libev/shadowsocks-libev/opt/bin


构建固件  ./build
###./build###
#!/bin/sh

if [ ! -d "brcm" ];then
echo "=================EXTRACT-brcm============================="
tar xjf brcm.tar.bz2
fi
if [ ! -d "buildroot-gcc463" ];then
echo "=================EXTRACT-buildroot-gcc463================="
tar xjf buildroot-gcc463_32bits.tar.bz2
fi
if [ -h "/opt/brcm" ];then
sudo rm -rf /opt/brcm
fi
if [ -h "/opt/buildroot-gcc463" ];then
sudo rm -rf /opt/buildroot-gcc463
fi
if [ ! -h "/opt/brcm" ];then
sudo ln -s ~/asuswrt_RM2100/brcm /opt/brcm
fi
if [ ! -h "/opt/buildroot-gcc463" ];then
sudo ln -s ~/asuswrt_RM2100/buildroot-gcc463 /opt/buildroot-gcc463
fi
cd ~/asuswrt_RM2100/release/src-ra-5010
export PATH=/opt/brcm/hndtools-mipsel-linux/bin:$PATH
export PATH=/opt/brcm/hndtools-mipsel-uclibc/bin:$PATH
export PATH=/opt/buildroot-gcc463/bin:$PATH
make RT-AC85U
