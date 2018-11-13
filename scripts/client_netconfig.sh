#!/usr/bin/env bash

ip addr flush dev enp0s8

sudo /bin/cp /vagrant/conf/interfaces /etc/network/
sudo systemctl restart networking
