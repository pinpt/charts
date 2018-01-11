#
# Makefile for building all things related to this repo
#
SHELL := /bin/bash
BASEDIR := $(shell echo $${PWD})
CVERSION := $(shell git describe --always)

.PHONY: all
all:
	@echo $(CVERSION)
