lint: ## Does the linting of the program using golangci-lint
	golangci-lint run

build: ## compile the source code of the application to a binary named awesome-api
	make lint
	go build

run: ## Run the application in background, and write logs into a file named awesome-api.log
	./awesome-api >./awesome-api.log 2>&1 &

stop: ##  Stop the application
	pkill awesome-api

clean: ## Stop the application. Delete the binary awesome-api and the log file awesome-api.log
	pkill awesome-api || true
	rm -rf awesome-api awesome-api.log coverage-units.out coverage-integrations.out

test: ## Test for browser responses with unit tests and integration tests
	make unit-tests
	make integration-tests

help: ## Prints out the list of targets and their usage.
	@grep -E -i [a-z]+:.# Makefile | tr -d '##'

unit-tests: ## Should be implemented and should execute (successfully) the Golang unit tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Should be implemented and should execute (successfully) the Golang integration tests
	go test -v -coverprofile=coverage-integrations.out

