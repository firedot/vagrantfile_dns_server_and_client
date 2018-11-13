#!/usr/bin/env bash


/bin/cp /vagrant/conf/named.conf.local /etc/bind/
/bin/cp /vagrant/conf/named.conf.options /etc/bind/
/bin/cp -R /vagrant/conf/zones /etc/bind/

systemctl enable bind9
systemctl restart bind9
