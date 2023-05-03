build: ## Generate the website.
	hugo
clean: ## Cleanup the content of the directory dist/ 
	rm -rf dist/*
post: ## Create a new blog post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
help: ## Prints out the list of targets and their usage.
	@cat Makefile | grep '##' | tr -d '##'
