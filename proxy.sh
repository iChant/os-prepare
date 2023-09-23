#! /bin/bash

set -e

echo "preparing for proxy container..."

# check for privilege
bash $(dirname ${BASH_SOURCE})/chkroot.sh

if ! command -v podman &> /dev/null; then
    echo "command podman not found" >> /dev/stderr
    exit 1
fi

podman run -d \
    --restart=always \
    --privileged \
    --network=host \
    --name v2raya \
    -e V2RAYA_ADDRESS=0.0.0.0:2017 \
    -v /lib/modules:/lib/modules:ro \
    -v /etc/resolv.conf:/etc/resolv.conf \
    -v /etc/v2raya:/etc/v2raya \
    mzz2017/v2raya

echo "proxy container added."
