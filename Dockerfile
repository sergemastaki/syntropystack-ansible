FROM ubuntu:20.04
 
ENV DEBIAN_FRONTEND=noninteractive
 
RUN apt-get update && \
  apt-get install -y gcc python-dev libkrb5-dev && \
  apt-get install python3-pip -y && \
  apt-get install git -y && \
  pip3 install ansible && \
  ansible-galaxy collection install https://github.com/SyntropyNet/syntropy-ansible-collection/releases/download/v0.1.2/syntropynet-syntropy-0.1.2.tar.gz && \
  cd /root/.ansible/collections/ansible_collections/syntropynet/syntropy && \
  pip3 install -U -r requirements.txt

