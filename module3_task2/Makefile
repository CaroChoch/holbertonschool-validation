hugo-build: check ## Generate the website.
	hugo

go-build: ## compile the source code of the application to a binary named awesome-api
	go build

build: hugo-build go-build ## Generate both the static website with ./dist/ and the API application

run: ## Run the Go application in background, and write logs into a file named awesome-api.log
	./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the Go application
	pkill awesome-api

lint: ## Should execute all of the lint steps
	golangci-lint run

test: ## should execute all of the testing targets (unit-tests, integration-tests and validate
	@make unit-tests 
	@make integration-tests
	@make validate

unit-tests: ## Should be implemented and should execute (successfully) the Golang unit tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Should be implemented and should execute (successfully) the Golang integration tests
	go test -v -coverprofile=coverage-integrations.out

clean: ## should delete all the generated files (logs, test reports, distribution directory, etc.) and call the make stop target as preliminary
	make stop || true
	pkill awesome-api || true
	rm -rf awesome-api awesome-api.log coverage-units.out coverage-integrations.out
	rm -rf dist/*

post: ## Create a new blog post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

check: ## Checks if there is no dead links in the markdown files & if the Markdown is correctly written
	@markdownlint content/posts/*.md
	@markdown-link-check content/posts/*.md

validate: ## checks if  the generated HTML is compliant with the W3C (acceptance testing)
	@./w3c_validator.py ./dist/index.html || true

help: ## Prints out the list of targets and their usage.
	@grep -E -i ^[a-z] Makefile | sed 's/ check//' | tr -d '##'

package: ## produces a file awesome-website.zip
	make build
	zip -r awesome-website.zip awesome-api dist/
	