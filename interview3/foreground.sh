#!/bin/bash -eu
apt-get --yes install ansible
apt install -y git python-pip && git clone https://github.com/DataDog/datadogpy.git; git clone https://github.com/DataDog/ansible-datadog-callback.git
cd datadogpy && chmod +x setup.py
python setup.py install
pip install pyyaml
