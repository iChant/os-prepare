#! /bin/bash

set -e

# should run as root
if [ $(id -u) -ne 0 ]; then
    echo "current user is not root, please check your privilege" >> /dev/stderr
    exit 1
fi
