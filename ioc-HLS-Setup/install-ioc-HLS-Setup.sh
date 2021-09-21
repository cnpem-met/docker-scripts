#!/bin/bash

cd /usr/apps && git clone https://github.com/lnls-gam/Setup-HLS-EpicsApp ioc-hls-setup-1 && cd ioc-hls-setup-1 && make
cd /usr/apps && git clone https://github.com/lnls-gam/Setup-HLS-EpicsApp ioc-hls-setup-2 && cd ioc-hls-setup-2 && make
cd /usr/apps && git clone https://github.com/lnls-gam/Setup-HLS-EpicsApp ioc-hls-setup-3 && cd ioc-hls-setup-3 && make
cd /usr/apps && git clone https://github.com/lnls-gam/Setup-HLS-EpicsApp ioc-hls-setup-4 && cd ioc-hls-setup-4 && make
