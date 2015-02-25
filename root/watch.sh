#!/bin/sh



watch $1   "iptables -vL;echo;echo;nmap localhost;echo;echo;echo -n 'DEFAULT: ';cat /proc/net/xt_recent/DEFAULT|wc -l;echo -n 'BANNED:  ';ipset list banned|wc -l"

exit
