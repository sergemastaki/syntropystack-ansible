#!/bin/sh

# Create a docker image containing ansible
docker build -t ansible:latest .
# Run that docker image
docker run -it ansible
