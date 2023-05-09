# Awesome Inc.

This website called 'Awesome Inc.' is built using GoHugo with the Ananke theme.

## Prerequisites

- GoHugo v0.84.0 extended
- GNU Make version 3.81 or 4.0 must be used
- Git (command line) in version 2+
- Ananke theme

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

build:  Generate the website.
clean:  Cleanup the content of the directory dist/ 
post:  Create a new blog post
check:  Checks if there is no dead links in the markdown files & if the Markdown is correctly written
validate:  checks if  the generated HTML is compliant with the W3C (acceptance testing)
help:  Prints out the list of targets and their usage.



