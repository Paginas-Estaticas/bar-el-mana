#!/usr/bin/make

.DEFAULT_GOAL := serve

MAKEFILE_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword ${MAKEFILE_LIST}))))

clean:
	(cd ${MAKEFILE_DIR}/src/ ; bundle exec jekyll clean)

build: clean
	(cd ${MAKEFILE_DIR}/src/ ; bundle exec jekyll build)

serve:
	(cd ${MAKEFILE_DIR}/src/ ; bundle exec jekyll serve)
