# Global vars
PROJECTNAME := $(shell basename "$(PWD)")

## run: Run the server with reload
run:
	hugo server -D

## build: Build the statics files
build:
	hugo -D

.PHONY: help
all: help
help: Makefile
	@echo
	@echo " Available commands for "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo