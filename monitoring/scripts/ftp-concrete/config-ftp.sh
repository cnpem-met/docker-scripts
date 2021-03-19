#!/bin/bash

ufw allow 20:21/tcp
ufw allow 1024:1048/tcp

useradd -m MTI -s /usr/sbin/nologin
usermod --password $(openssl passwd -1 M*T*I123) MTI

echo "/usr/sbin/nologin" | tee -a /etc/shells 
touch /etc/vsftpd.userlist && echo "MTI" | tee -a /etc/vsftpd.userlist

#service vsftpd start
#/etc/init.d/vsftpd start
