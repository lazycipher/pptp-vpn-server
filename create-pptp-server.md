# How to Create a PPTP VPN Server on Ubuntu

## Run the Following Codes in SSH
### Step 1-
This will install PPTPD Module

`apt-get install pptpd`

###### Adding some Codes in pptpd.conf

`nano /etc/pptpd.conf`

###### Add the following lines in end of pptpd.conf file
```
localip 10.0.0.1
remoteip 10.0.0.100-200
```

###### Now Set up Username and Passwords : 
###### Input Username & Password in the file for exampple Given below

```
nano /etc/ppp/chap-secrets 
```
```
# Secrets for authentication using CHAP
# client        server  secret                  IP addresses
kryptor         pptpd   xyzxyz@123              *

```
###### Add DNS servers to /etc/ppp/pptpd-options

```
nano /etc/ppp/pptpd-options
```
###### Add The Following Codes at the end of file
```
ms-dns 8.8.8.8
ms-dns 8.8.4.4
```
###### Now Restart PPTPD Service

```
service pptpd restart

```
###### Setup Forwarding

```
/etc/sysctl.conf
```
###### Add the following Codes at the end of file
```
net.ipv4.ip_forward = 1
```
###### Create a NAT rule for iptables
```
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE && iptables-save
`
``


That's it. **You've successfully Created your own PPTP VPN Server**

###### Enjoy
