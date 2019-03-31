#!/bin/bash -eu

if ! [[ -f ~/.ssh/known_hosts ]]
then
  mkdir -p ~/.ssh
  touch ~/.ssh/known_hosts
fi

export ipv4_re='^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$'
export name_re='^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]*[a-zA-Z0-9])\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\-]*[A-Za-z0-9])$'
export server

while read server
do
  if [[ $server =~ $ipv4_re ]]
  then
    echo "$server is numbers"
    ssh-keygen -R $server
    ssh-keyscan $server >> ~/.ssh/known_hosts
    echo "$server added to known_hosts"
  elif [[ $server =~ $name_re ]]
  then
    echo "$server is name"
    ip=$( dig $server +short )
    ssh-keygen -R $server
    ssh-keygen -R $ip
    ssh-keyscan $server >> ~/.ssh/known_hosts
    echo "$server added to known_hosts"
  else
    echo "'$server' is neither ipv4 nor name"
  fi
done
