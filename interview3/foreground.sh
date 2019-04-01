#!/bin/bash -eu
apt-get --yes install ansible && \
export ANSIBLE_HOST_KEY_CHECKING=False && \
apt install -y curl && \
DD_API_KEY=471f90bc89bedc40f9878b013780d1e3 bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_script.sh)"
