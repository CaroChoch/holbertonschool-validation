#!/bin/bash

# Update package lists and installation of required packages
apt-get update && apt-get install -y hugo make

# download minimal version to use 'hugo' with the template ananke
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb

# install hugo
apt install ./hugo.deb

# remove file after the installation
rm hugo.deb

# install golangcolint
GOLANGCILINT_VERSION="1.52.2"
curl --silent --show-error --location --output /tmp/golangci-lint.deb \
     "https://github.com/golangci/golangci-lint/releases/download/v${GOLANGCILINT_VERSION}/golangci-lint-${GOLANGCILINT_VERSION}-linux-amd64.deb"
dpkg -i /tmp/golangci-lint.deb
rm -f /tmp/golangci-lint.deb

# install npm
npm install --global \
  markdownlint-cli@0.26.0 \
  markdown-link-check@3.8.6
