#!/bin/bash -eu
apt-get --yes install ansible && \
chmod +x update-host-key.sh && \
ansible -i hosts all --list | ./update-host-key.sh
