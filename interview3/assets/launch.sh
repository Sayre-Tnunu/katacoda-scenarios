#!/bin/bash -eu
DD_API_KEY=$api_key && \
bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_script.sh)" && \
ansible-playbook -i hosts ansible.yml #--ask-vault-pass
