.DEFAULT_GOAL := help

include .env

.PHONY: help
help:  ## Show this help.
	@grep -E '^\S+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "%-30s %s\n", $$1, $$2}'

.PHONY: todo
todo:  ## Show the TODOs in the code.
	@{ grep -n -w TODO Makefile | uniq || echo "No pending tasks"; } | sed '/grep/d'

.PHONY: run
run:  ## Start the app in development mode.
	@echo "Starting $(IMAGE_NAME) in development mode."
	docker-compose -f docker-compose.yml up

.PHONY: clean
clean:  ## Clean the app.
	@echo "Cleaning $(IMAGE_NAME) docker image."
	docker-compose -f docker-compose.yml down --rmi all --volumes --remove-orphans