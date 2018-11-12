#!/usr/bin/env bash

PKG="dig"

which $PKG || {
  apt-get update
  apt-get install -y dig
}
