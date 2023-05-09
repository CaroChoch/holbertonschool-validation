build: check ## Generate the website.
	hugo

clean: ## Cleanup the content of the directory dist/ 
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

