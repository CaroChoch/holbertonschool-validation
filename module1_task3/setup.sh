#!/bin/bash

# spawn a sandboxed environment in an Ubuntu 18.04 Docker
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

# Installation of Go-Hugo and Make applications
apt-get update && apt-get install -y hugo make

# Running the command `make build` to build the website
make build
