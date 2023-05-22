FROM golang:1.15.8-alpine

WORKDIR /usr/src/myapp

# Install Hugo
# hadolint ignore=DL3009, DL3015, DL3008, DL3018
RUN apk update && \
    apk add --no-cache --update curl hugo gcc musl-dev && \
    export GO111MODULE=on && \
    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin && \
    rm -rf /var/cache/apk/*

# Install golangci-lint
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0

# Copy the rest of your application code
COPY . .

# Build your application
RUN go build -o myapp

# Set the entrypoint for the container
ENTRYPOINT ["./myapp"]
