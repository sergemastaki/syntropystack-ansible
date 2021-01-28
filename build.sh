#!/bin/sh

# Create a docker image containing ansible
docker build -t ansible:latest .
# Run that docker image
docker run -it ansible
# install SyntropyNet inside that image
ansible-galaxy collection install https://github.com/SyntropyNet/syntropy-ansible-collection/releases/download/v0.1.2/syntropynet-syntropy-0.1.2.tar.gz
pip3 install syntropynac jinja2

