FROM golang:latest

WORKDIR /usr/src/myapp

RUN apt-get update && apt-get install -y hugo && \
    go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0

ENV PATH="/usr/local/go/bin:${PATH}"
