#!/bin/bash -eu
apt-get --yes install ansible curl && \
export ANSIBLE_DATADOG_CALLBACK_CONF_FILE=datadog_callback.yml && \
export ANSIBLE_HOST_KEY_CHECKING=False && \
#export api_key=xxxxxx && \
export DD_API_KEY=$api_key && \
#export DD_API_KEY=471f90bc89bedc40f9878b013780d1e3 && \
bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_script.sh)"
