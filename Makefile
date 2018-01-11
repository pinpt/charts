#
# Makefile for building all things related to this repo
#
SHELL := /bin/bash
BASEDIR := $(shell echo $${PWD})
VERSION := $(shell git describe --always)
URL := https://pinpt.github.com/charts

.PHONY: build
build: install-helm
	@helm package oklog -d $(BASEDIR)/docs --version $(VERSION)
	@helm repo index $(BASEDIR)/docs --url $(URL)

.PHONY: install-helm
install-helm:
ifeq (, $(shell which helm))
	@echo need to install helm ...
ifeq ($(UNAME_S),Darwin)
	@brew install kubernetes-helm
else ifeq ($(UNAME_S),Linux)
	@mkdir -p $(GOPATH)/bin && cd /tmp && curl -L https://kubernetes-helm.storage.googleapis.com/helm-v2.7.2-linux-amd64.tar.gz | tar zxf - && mv linux-amd64/helm $(GOPATH)/bin
endif
endif
