#!/usr/bin/env bash

if [[ "$(which ansible)" == "" ]]; then
    sudo apt update
    sudo apt upgrade -y
    sudo apt install -y \
        python3 \
        python3-pip \
        git

    pip3 install ansible

    export PATH=$PATH:~/.local/bin
fi

[[ -d /tmp/ansible ]] || git clone https://github.com/ibacangan/ansible.git /tmp/ansible

cd /tmp/ansible

ansible-galaxy install -r requirements.yaml
ansible-playbook -i localhost install.yaml
