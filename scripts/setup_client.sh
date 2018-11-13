#!/usr/bin/env bash

echo configuring cloent resolv.conf
cp /vagrant/conf/resolv.conf /etc/resolv.conf

echo running: dig www.visitbg.local @172.28.128.3
dig www.visitbg.local @172.28.128.3
