.DEFAULT_GOAL := help
.SHELL = '/bin/bash'

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

all: install

install: ## Installs the root packages that support development
	echo 'Installing npm packages'
	npm install
