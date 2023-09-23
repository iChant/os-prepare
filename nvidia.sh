#! /bin/bash

set -e

echo "installing nvidia drivers ..."

# check for privilege
bash $(dirname ${BASH_SOURCE})/chkroot.sh

zypper addrepo --refresh https://download.nvidia.com/opensuse/tumbleweed NVIDIA
zypper in nvidia-driver-G06-kmp-default nvidia-drivers-G06

echo "nvidia drivers installed"
