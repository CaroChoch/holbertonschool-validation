#!/bin/bash

# spawn a sandboxed environment in an Ubuntu 18.04 Docker
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

# Installation of Go-Hugo and Make applications
apt-get update && apt-get install -y hugo make

# getting the release of 'hugo'
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz

# install hugo
curl -L -o hugo_extended_0.84.0_Linux-64bit.tar.gz

# Running the command `make build` to build the website
make build
