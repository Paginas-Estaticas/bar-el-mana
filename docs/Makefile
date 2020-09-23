#!/usr/bin/make

.DEFAULT_GOAL := serve

MAKEFILE_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword ${MAKEFILE_LIST}))))

clean:
	bundle exec jekyll clean

build: clean
	bundle exec jekyll build

serve:
	bundle exec jekyll serve
