#!/bin/bash

# Check if the docker image already exists on the machine
# if not, pull it from the docker hub.

# If it cannot be pulled from dockerhub, create it fresh, please use the command
# docker build -t dongjaek/dev:base ./ 

if [[ "$(docker images -q dongjaek/dev:base 2> /dev/null)" == "" ]]; then
	docker pull dongjaek/dev:base
fi

docker images dongjaek/dev:base
