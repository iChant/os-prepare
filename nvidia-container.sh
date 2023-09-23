#! /bin/bash

set -e

echo "installing nvidia container packages..."

# check for privilege
bash $(dirname ${BASH_SOURCE})/chkroot.sh

zypper --quiet addrepo --refresh https://nvidia.github.io/libnvidia-container/opensuse-leap15.1/libnvidia-container.repo
zypper --quiet in nvidia-container-toolkit 
nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml

echo "nvidia container packages installed."
