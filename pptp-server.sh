#!/bin/bash
sudo apt-get install pptpd

sudo cat <<EOT>> /etc/pptpd.conf
localip 10.0.0.1
remoteip 10.0.0.100-200
EOT

sudo cat <<EOT>> /etc/ppp/chap-secrets
user1	pptpd	user@1 *
user2	pptpd	user@2 *
user3	pptpd	user@3 *
user4	pptpd	user@4 *
EOT


sudo cat <<EOT>> /etc/ppp/pptpd-options
ms-dns 8.8.8.8
ms-dns 8.8.4.4
EOT

sudo service pptpd restart

sudo cat <<EOT>> /etc/sysctl.conf
net.ipv4.ip_forward = 1
EOT


iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE && iptables-save



cat <<EOT>> /etc/ppp/thankyou.txt
#
#
#	This PPTP Server Installation Bash Script was written by krypt0r.
#
#
#	Follow for more => github.com/krypt0r
#
#	To Change or add users and passwords,
#	Edit /etc/ppp/chap-secrets
#
#	Thank You for using krypt0r's Bash Script :)
#
#
#
EOT
cat /etc/ppp/thankyou.txt
cat /etc/ppp/chap-secrets
