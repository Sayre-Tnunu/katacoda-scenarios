apt-add-repository --yes --update ppa:ansible/ansible

touch /root/test123
mkdir callback_plugins
apt-get install -y git python-pip
git clone https://github.com/DataDog/datadogpy.git
git clone https://github.com/DataDog/ansible-datadog-callback.git
#git clone git@gitlab.com:asayre/datadog-ansible-vault.git

cd datadogpy && chmod +x setup.py && chmod +x launch.sh
python setup.py install && cd ..
pip install pyyaml
cp ansible-datadog-callback/datadog_callback.py callback_plugins/
