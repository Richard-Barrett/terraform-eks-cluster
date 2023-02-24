MKFILE_DIR := $(abspath $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))))
IMAGE_NAME ?= Richard-Barrett/terraformit
IMAGE_TAG ?= latest

UNAME_S=$(shell uname -s)
ifeq ($(UNAME_S),Linux)
	GOOS := linux
endif
ifeq ($(UNAME_S),Darwin)
	GOOS := darwin
endif
ifeq ($(UNAME_S), Windows)
	GOOS := windows
endif

MOD_PATH := github.com/Richard-Barrett/terraformit
DOCKER_FLAGS := -v $(MKFILE_DIR)

# Purge Teleport Containers
.PHONY: purge
purge: 
	docker container rm $(docker container ls -a | grep -i teleport | awk '{print $1}') --force

# Runs Container Image
.PHONY: container
container: 
	docker run --user 1001 --rm -it -v /var/run/docker.sock:/var/run/docker.sock \
	  -v ${HOME}/.kube/config:/root/.kube/config \
	  -e AWS_ACCESS_KEY=${AWS_ACCESS_KEY} \
	  -e AWS_SECRET_KEY=${AWS_SECRET_KEY} \
	  -e TFC_TOKEN=${TFC_TOKEN} \
	  ${IMAGE_NAME} /bin/bash

# Makes Image Base Layer
.PHONY: image 
image:
	docker build $(MKFILE_DIR) -t $(IMAGE_NAME):$(IMAGE_TAG)