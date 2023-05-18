# Awesome Inc.

This website called 'Awesome Inc.' is built using GoHugo with the Ananke theme.

## Prerequisites

- GoHugo v0.84.0 extended
- GNU Make version 3.81 or 4.0 must be used
- Git (command line) in version 2+
- Ananke theme
- Golang v1.15.*
- NPM v7+ with NodeJS v14.*
- Python3

## Lifecycle

The development lifecycle of this project consists of the following steps: Build / Clean / Post / Help

#### Build

Generate the website from the markdown and configuration files in the directory `dist/` .

`make build`

#### Clean

Cleanup the content of the directory `dist/`

`make clean`

#### Post

Create a new blog post whose filename and title come from the environment variables `POST_TITLE` and `POST_NAME`.

`make POST_NAME=who-are-we POST_TITLE="Who are we" post`

#### Check

Should succeed by default, and fail when presented with a dead link or a badly written Markdown file

#### Validate

Must always succeed by default and should print the result on the stdout.

#### Help

Prints out the list of targets and their usage.

`make help`
 
The goal `make help`must be implemented and print a list of the goals with a sentence each :

hugo-build:  Generate the website.
go-build:  compile the source code of the application to a binary named awesome-api
build: hugo-build go-build  Generate both the static website with ./dist/ and the API application
run:  Run the Go application in background, and write logs into a file named awesome-api.log
stop:  Stop the Go application
lint:  Should execute all of the lint steps
test:  should execute all of the testing targets (unit-tests, integration-tests and validate
unit-tests:  Should be implemented and should execute (successfully) the Golang unit tests
integration-tests:  Should be implemented and should execute (successfully) the Golang integration tests
clean:  should delete all the generated files (logs, test reports, distribution directory, etc.) and call the make stop target as preliminary
post:  Create a new blog post
check:  Checks if there is no dead links in the markdown files & if the Markdown is correctly written
validate: s if  the generated HTML is compliant with the W3C (acceptance testing)
help:  Prints out the list of targets and their usage.
