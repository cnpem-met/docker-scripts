#!/bin/bash

#cd /usr/apps/${IOC_NAME}/iocBoot/iocSiriusHls/ && ./st.cmd
export IOC_IP="10.28.66.16"
export IOC_PREFIX="hls-setup-1"
export IOC_NAME=ioc-hls-setup-1
cd /usr/apps/${IOC_NAME}/iocBoot/iocSiriusHls && procServ -n "HLS 1 Daemon " -L ./ioc.log -p ./PIDinfo --logstamp --timefmt "[%c] " -i ^D^C 20001 ./st.cmd

IOC_IP="10.28.36.18"
IOC_PREFIX="hls-setup-2"
IOC_NAME=ioc-hls-setup-2
cd /usr/apps/${IOC_NAME}/iocBoot/iocSiriusHls && procServ -n "HLS 2 Daemon " -L ./ioc.log -p ./PIDinfo --logstamp --timefmt "[%c] " -i ^D^C 20002 ./st.cmd

IOC_IP="10.28.11.16"
IOC_PREFIX="hls-setup-3"
IOC_NAME=ioc-hls-setup-3
cd /usr/apps/${IOC_NAME}/iocBoot/iocSiriusHls && procServ -n "HLS 3 Daemon " -L ./ioc.log -p ./PIDinfo --logstamp --timefmt "[%c] " -i ^D^C 20003 ./st.cmd

IOC_IP="10.28.86.16"
IOC_PREFIX="hls-setup-4"
IOC_NAME=ioc-hls-setup-4
cd /usr/apps/${IOC_NAME}/iocBoot/iocSiriusHls && procServ -n "HLS 4 Daemon " -L ./ioc.log -p ./PIDinfo --logstamp --timefmt "[%c] " -i ^D^C 20004 ./st.cmd

tail -f /dev/null
