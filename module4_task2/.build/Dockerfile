FROM golang:latest

WORKDIR /usr/src/myapp

# Install Hugo
RUN apt-get update && apt-get install -y hugo

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