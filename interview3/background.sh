apt-add-repository --yes --update ppa:ansible/ansible

touch /root/test123
apt-get install -y git python-pip
git clone https://github.com/DataDog/datadogpy.git
git clone https://github.com/DataDog/ansible-datadog-callback.git
git clone git@github.com:Sayre-Tnunu/katacoda-scenarios.git
cd datadogpy && chmod +x setup.py
python setup.py install && cd ..
pip install pyyaml
cp ansible-datadog-callback/datadog_callback.py katacoda-scenarios/interview3/callback_plugins/
