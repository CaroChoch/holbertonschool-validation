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

#### Help

Prints out the list of targets and their usage.

`make help`



