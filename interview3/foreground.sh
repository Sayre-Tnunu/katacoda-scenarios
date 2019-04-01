#!/bin/bash -eu
apt-get --yes install ansible, ansible datadog -i hosts --list | ./update-host-key.sh
