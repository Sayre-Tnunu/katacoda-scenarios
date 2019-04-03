#!/bin/bash -eu
apt-get --yes install ansible curl && \
#ansible-vault decrypt api_key && \
#set -o allexport && source api_key && \
export ANSIBLE_HOST_KEY_CHECKING=False && \
export ANSIBLE_DATADOG_CALLBACK_CONF_FILE=datadog_callback.yml && \
chmod +x launch.sh
