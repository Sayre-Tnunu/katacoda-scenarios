#!/bin/bash -eu
apt-get --yes install ansible && \
export ANSIBLE_HOST_KEY_CHECKING=False
