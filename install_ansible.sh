#!/usr/bin/env bash

sudo apt update
sudo apt upgrade -y
sudo apt install -y \
    python3 \
    python3-pip \
    git

pip3 install ansible

[[ -d /tmp/ansible ]] || git clone https://github.com/ibacangan/ansible.git /tmp/ansible

cd /tmp/ansible

export PATH=$PATH:~/.local/bin

ansible-galaxy install -r requirements.yaml
ansible-playbook -i localhost install.yaml