FROM golang:1.15.8-alpine

WORKDIR /usr/src/myapp

# Install Hugo
# hadolint ignore=DL3009, DL3015, DL3008
RUN apk update && apk install -y hugo

# Install golangci-lint
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0

# Add Hugo and golangci-lint to the PATH
ENV PATH="/usr/local/go/bin:${PATH}"

# Copy the rest of your application code
COPY . .

# Build your application
RUN go build -o myapp

# Set the entrypoint for the container
ENTRYPOINT ["./myapp"]
