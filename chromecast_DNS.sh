首先路由器要root，能够用ssh登录，登陆后
#openwrt
vi /etc/firewall.user
1
vi /etc/firewall.user
或者winscp登陆，直接复制粘贴。

在/etc/firewall.user上增加两条规则即可：

iptables -t nat -A PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 53
iptables -t nat -A PREROUTING -p tcp --dport 53 -j REDIRECT --to-ports 53
1
2
iptables -t nat -A PREROUTING -s 192.168.1.1/24 -p udp --dport 53 -j DNAT --to 192.168.1.1
iptables -t nat -A PREROUTING -s 192.168.1.1/24 -p tcp --dport 53 -j DNAT --to 192.168.1.1
192.168.1.1是路由器IP，亲们根据自己的路由器改正。


#padavan
#/tmp/ipt_nat.rules
-A PREROUTING -s 10.0.0.1/24 -p udp --dport 53 -j DNAT --to 10.0.0.1
-A PREROUTING -s 10.0.0.1/24 -p tcp --dport 53 -j DNAT --to 10.0.0.1

#/tmp/firewall.shadowsocks.pdcn
-A SSTP_LAN_AC -j SSTP_WAN_AC
-A SSTP_OUTPUT -p tcp -m addrtype --src-type LOCAL ! --dst-type LOCAL -j SSTP_RULE
-A SSTP_OUTPUT -p tcp -m addrtype --src-type LOCAL ! --dst-type LOCAL -j SSTP_RULE
-A SSTP_PREROUTING -p udp -m addrtype ! --src-type LOCAL -m udp --dport 53 -j DNAT --to-destination 192.168.123.1
-A SSTP_PREROUTING -p udp -m addrtype ! --src-type LOCAL -m udp --dport 53 -j DNAT --to-destination 192.168.123.1
-A SSTP_PREROUTING -p tcp -m addrtype ! --src-type LOCAL ! --dst-type LOCAL -j SSTP_RULE
-A SSTP_PREROUTING -p tcp -m addrtype ! --src-type LOCAL ! --dst-type LOCAL -j SSTP_RULE
-A SSTP_RULE -p tcp -m set --match-set proxyaddr dst -m multiport --dports 1:65535 -j RETURN
-A SSTP_RULE -m mark --mark 0xff -j RETURN
-A SSTP_RULE -m set --match-set privaddr dst -j RETURN
-A SSTP_RULE -d 8.8.8.8/32 -p tcp -m tcp --dport 53 --tcp-flags FIN,SYN,RST,ACK SYN -j REDIRECT --to-ports 1090
-A SSTP_RULE -j SSTP_LAN_AC
-A SSTP_RULE -p tcp -m set --match-set proxyaddr dst -m multiport --dports 1:65535 -j RETURN
-A SSTP_RULE -m mark --mark 0xff -j RETURN
-A SSTP_RULE -m set --match-set privaddr dst -j RETURN
-A SSTP_RULE -d 8.8.8.8/32 -p tcp -m tcp --dport 53 --tcp-flags FIN,SYN,RST,ACK SYN -j REDIRECT --to-ports 1090
