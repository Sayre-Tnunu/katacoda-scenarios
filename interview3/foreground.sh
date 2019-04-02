#!/bin/bash -eu
apt-get --yes install ansible curl && \
ansible-vault decrypt api_key && \
set -o allexport && source api_key && \
export ANSIBLE_DATADOG_CALLBACK_CONF_FILE=datadog_callback.yml && \
#export api_key=$api_key && \
export DD_API_KEY=$api_key
export ANSIBLE_HOST_KEY_CHECKING=False #&& \
#bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_script.sh)"
