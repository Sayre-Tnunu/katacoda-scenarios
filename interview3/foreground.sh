#!/bin/bash -eu
apt-get --yes install ansible curl && \
export ANSIBLE_HOST_KEY_CHECKING=False && \
ansible-vault decrypt datadog_callback.yml
