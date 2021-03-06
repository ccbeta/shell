#!/bin/bash
#wget -qO- bench.sh | bash
#查看被禁IP
#fail2ban-client status ssh-iptables

if [ -e /etc/redhat-release ];then
yum update -y
yum upgrade -y
yum -y install epel-release
yum -y install wget mtr traceroute unzip make gcc screen lrzsz lsof  vim vnstat nmap sysstat iftop htop nload
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/fail2ban.sh && bash fail2ban.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/ssrmu.sh && bash ssrmu.sh
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/kcptun.sh && bash kcptun.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/cloudt.sh/master/cloudt.sh && bash cloudt.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/aria2.sh && bash aria2.sh
sed -i "/^alias mv='mv -i'/a\alias vi='vim'" ~/.bashrc
sed -i "/^alias mv='mv -i'/a\alias fm='free -m'" ~/.bashrc
sed -i "/^alias mv='mv -i'/a\alias grep='grep --color=auto'" ~/.bashrc
sed -i "/^alias mv='mv -i'/a\alias cm='echo 1 > /proc/sys/vm/drop_caches'" ~/.bashrc
source .bashrc
wget --no-check-certificate https://github.com/ccbeta/nali-ipip/archive/master.zip
unzip master.zip
cd nali-ipip-master
chmod +x configure
./configure
make && make install
cd
echo "set nu" >> ~/.vimrc
echo "set cursorline" >> ~/.vimrc
echo "set autoindent" >> ~/.vimrc
. .vimrc 
yum update -y
yum upgrade -y
nali-update
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/bbr.sh && bash bbr.sh

elif [ $(cat /etc/issue|cut -d ' ' -f1) == "Ubuntu" ];then
apt-get update -y
apt-get upgrade -y
apt-get -y install wget mtr traceroute unzip make gcc screen lrzsz lsof  vim vnstat nmap sysstat iftop htop nload bmon
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/fail2ban.sh && bash fail2ban.sh 2>&1 | tee fail2ban.log
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/ssrmu.sh && bash ssrmu.sh
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/kcptun.sh && bash kcptun.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/ocserv.sh && bash ocserv.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/cloudt.sh/master/cloudt.sh && bash cloudt.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/aria2.sh && bash aria2.sh
wget --no-check-certificate https://github.com/ccbeta/nali-ipip/archive/master.zip
unzip master.zip
cd nali-ipip-master
chmod +x configure
./configure
make && make install
cd
echo "set nu" >> ~/.vimrc
echo "set cursorline" >> ~/.vimrc
echo "set autoindent" >> ~/.vimrc
. .vimrc 
apt-get update -y
apt-get upgrade -y
nali-update
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/bbr.sh && bash bbr.sh

elif [ $(cat /etc/issue|cut -d ' ' -f1) == "Debian" ];then
apt-get update -y
apt-get upgrade -y
apt-get -y install wget mtr traceroute unzip make gcc screen lrzsz lsof  vim vnstat nmap sysstat iftop htop nload bmon
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/fail2ban.sh && bash fail2ban.sh 2>&1 | tee fail2ban.log
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/ssrmu.sh && bash ssrmu.sh
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/kcptun.sh && bash kcptun.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/ocserv.sh && bash ocserv.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/cloudt.sh/master/cloudt.sh && bash cloudt.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/aria2.sh && bash aria2.sh
wget --no-check-certificate https://github.com/ccbeta/nali-ipip/archive/master.zip
unzip master.zip
cd nali-ipip-master
chmod +x configure
./configure
make && make install
cd
echo "set nu" >> ~/.vimrc
echo "set cursorline" >> ~/.vimrc
echo "set autoindent" >> ~/.vimrc
. .vimrc 
apt-get update -y
apt-get upgrade -y
nali-update
wget --no-check-certificate https://raw.githubusercontent.com/ccbeta/shell/master/bbr.sh && bash bbr.sh

else
system does not support.
exit
fi
