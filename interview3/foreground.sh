#!/bin/bash -eu
apt-get --yes install ansible && \
chmod +x update-host-key.sh && \
ansible datadog -i hosts --list | ./update-host-key.sh
