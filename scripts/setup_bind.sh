#!/usr/bin/env bash

cp /vagrant/conf/named.conf.local /etc/bind/
cp /vagrant/conf/named.conf.options /etc/bind/
cp -R /vagrant/conf/zones /etc/bind/

systemctl enable bind9
systemctl restart bind9
