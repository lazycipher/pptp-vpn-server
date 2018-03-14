# pptp-vpn-server

Create a Simple PPTP VPN server on Ubuntu Server

## Goals:

* Personal Self hosted VPN Server
* Easy to use and Simple
* Few Terminal Codes
* Multi User VPN

## Requirements:

* Ubuntu Server
* SSH Access
* PTPD Module
* Little/No Knowldge of Ubuntu


## You Need to Know:

The Point-to-Point Tunneling Protocol (PPTP) is an obsolete method for implementing virtual private networks, with many known security issues. PPTP uses a TCP control channel and a GRE tunnel to encapsulate PPP packets.

The PPTP specification does not describe encryption or authentication features and relies on the Point-to-Point Protocol being tunneled to implement security functionality. However, the most common PPTP implementation shipping with the Microsoft Windows product families implements various levels of authentication and encryption natively as standard features of the Windows PPTP stack. The intended use of this protocol is to provide security levels and remote access levels comparable with typical VPN products.

A specification for PPTP was published in July 1999 as RFC 2637 and was developed by a vendor consortium formed by Microsoft, Ascend Communications (today part of Nokia), 3Com, and others. PPTP has not been proposed nor ratified as a standard by the Internet Engineering Task Force. Source : [Wikipedia](https://en.wikipedia.org/wiki/Point-to-Point_Tunneling_Protocol)

PPTP has been the subject of many security analyses and **serious security vulnerabilities have been found** in the protocol. The known vulnerabilities relate to the underlying PPP authentication protocols used, the design of the MPPE protocol as well as the integration between MPPE and PPP authentication for session key establishment.

## Creating your Own PPTP VPN Server on Ubuntu.

## Manual Installation
Follow [Create-Vpn-Server.md](/Create-Vpn-Server.md)

## Automatic Installation

Download the pptp-server.sh and execute that bash script.
It'll automatically create a PPTP Server on your VPS with some specific usernames and passwords which will be shown on Terminal.

## Credits

This happend with the help of -

* Ubuntu
* PPTPD Server
* Ubuntu Forum
* All Related Developers
