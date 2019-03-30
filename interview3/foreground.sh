#!/bin/bash -eu
apt-get --yes install ansible

apt install -y git python-pip && git clone https://github.com/DataDog/datadogpy.git https://github.com/DataDog/ansible-datadog-callback.git

chmod +x datadogpy/setup.py
python datadogpy/setup.py install

pip install pyyaml
