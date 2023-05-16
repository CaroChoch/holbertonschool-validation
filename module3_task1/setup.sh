#!/bin/bash

# Update package lists and installation of required packages
apt-get update && apt-get install -y hugo make

# download minimal version to use 'hugo' with the template ananke
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb

# install hugo
apt install ./hugo.deb

# remove file after the installation
rm hugo.deb

# Install golangci-lint and markdown-link-check
npm install -g markdownlint-cli@0.26.0
npm install -g markdown-link-check@3.8.6
markdownlint --version

# Running the command `make build` to build the website
make build
