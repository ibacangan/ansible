#!/usr/bin/env bash

sudo apt update
sudo apt upgrade
sudo apt install \
    python3 \
    python3-pip \
    git

pip install ansible

git clone https://github.com/ibacangan/setup.git /tmp/setup

cd /tmp/setup
ansible-playbook -i localhost