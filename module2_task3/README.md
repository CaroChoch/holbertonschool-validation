# Testing in the Software Development Methodology

Awesome API is a simple HTTP web server written in the Golang language. It listens to incoming HTTP requests on localhost:9999.

## Prerequisites

- GNU Make version 3.81 or 4.0 must be used
- Golang v1.15.*
- NPM v7+ with NodeJS v14.*
- Python3

## Lifecycle

The development lifecycle of this project consists of the following steps: Build / Run / Stop / Clean / Test / Lint

#### Build

Compile the source code of the application to a binary named `awesome-api` (the name `awesome-api` comes from the command `go mod init github.com/<your github handle>/awesome-api`) with the command `go build`. The first build may takes some times.

#### Run

Run the application in background by executing the binary `awesome-api`, and write logs into a file named `awesome-api.log` with the command `./awesome-api >./awesome-api.log 2>&1 &`.

#### Stop

Stop the application with the command `kill XXXXX` where `XXXXX` is the Process ID of the application. For instance: `kill "$(pgrep awesome-api)"`.

#### Clean

Stop the application. Delete the binary `awesome-api` and the log file `awesome-api.log`

#### Test

You want to test it to ensure that it behaves as expected. With the application started, you may want to use the command line `curl `(or your web browser, or the command `wget` or any other HTTP client).

#### Help

The goal `make help`must be implemented and print a list of the goals with a sentence each :
lint:  Does the linting of the program using golangci-lint
build:  compile the source code of the application to a binary named awesome-api
run:  Run the application in background, and write logs into a file named awesome-api.log
stop:   Stop the application
clean:  Stop the application. Delete the binary awesome-api and the log file awesome-api.log
test:  Test for browser responses with unit tests and integration tests
help:  Prints out the list of targets and their usage.
unit-tests:  Should be implemented and should execute (successfully) the Golang unit tests
integration-tests:  Should be implemented and should execute (successfully) the Golang integration tests

#### Lint

Does the linting of the program using golangci-lint

#### integration-tests

Should be implemented and should execute (successfully) the Golang integration tests



