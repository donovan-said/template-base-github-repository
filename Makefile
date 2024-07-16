SHELL := /bin/bash

.PHONY: all
all: lint

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: lint
lint: ## add linter
	$(call print-target)

define print-target
	@printf "Executing target: \033[36m$@\033[0m\n"
endef