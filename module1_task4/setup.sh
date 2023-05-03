#!/bin/bash

# spawn a sandboxed environment in an Ubuntu 18.04 Docker
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

# Installation of Go-Hugo and Make applications
apt-get update && apt-get install -y hugo make

# getting the latest release of 'hugo'
curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_0.111.3_Linux-64bit.tar.gz

# install hugo
apt-get install ./install_hugo.deb

# Running the command `make build` to build the website
make build
