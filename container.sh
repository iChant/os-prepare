#! /bin/bash

echo "installing containers..."

# check for privilege
bash $(dirname ${BASH_SOURCE})/chkroot.sh

zypper --quiet in -t pattern container_runtime

echo "containers packages installed"
