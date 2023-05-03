#!/bin/bash

# Installation of Go-Hugo and Make applications
apt-get update && apt-get install -y hugo make

# getting the latest release of 'hugo'
wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.d

# install hugo
dpkg -i hugo_${HUGO_VERSION}_Linux-64bit.deb

rm hugo_${HUGO_VERSION}_Linux-64bit.deb

# Running the command `make build` to build the website
make build
