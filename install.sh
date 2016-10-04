#!/bin/bash

if [ $(whoami) = "root" ]; then # run as root

export GCSFUSE_REPO=gcsfuse-`lsb_release -c -s`
echo "deb http://packages.cloud.google.com/apt $GCSFUSE_REPO main" | sudo tee /etc/apt/sources.list.d/gcsfuse.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
apt-get update -y
apt-get install -y gcsfuse

else # not run as root
echo "This command must be run as root."
fi
