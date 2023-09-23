#! /bin/bash

set -e

echo "preparing for necessary packages..."

# check for privilege
bash $(dirname ${BASH_SOURCE})/chkroot.sh

zypper --quiet install starship

echo "basic packages installed"
