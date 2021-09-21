#!/bin/bash

pip3 install pcaspy
cd /usr/apps/ioc-concrete/ && python3 buildMTI.py

tail -f /dev/null
