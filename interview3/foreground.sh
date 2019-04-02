#!/bin/bash -eu
apt-get --yes install ansible curl && \
ansible-vault decrypt datadog_callback.yml && \
export ANSIBLE_HOST_KEY_CHECKING=False && \
export ANSIBLE_DATADOG_CALLBACK_CONF_FILE=datadog_callback.yml && \
export api_key=$ANSIBLE_DATADOG_CALLBACK_CONF_FILE && \
export DD_API_KEY=$api_key
#bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_script.sh)"
