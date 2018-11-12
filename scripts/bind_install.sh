#!/usr/bin/env bash

apt-get update
PKG="apt list bind9 --installed"

$PKG | grep bind || sudo apt-get install -y bind9 dnsutils

