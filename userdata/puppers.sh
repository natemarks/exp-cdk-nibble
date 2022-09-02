#!/usr/bin/env bash
set -Eeuo pipefail
echo "PUPPERS"
touch /tmp/puppers.txt
curl -Lo /opt/puppers_0.0.2_linux_amd64.tar.gz \
https://github.com/natemarks/puppers/releases/download/v0.0.2/puppers_0.0.2_linux_amd64.tar.gz

mkdir -p /opt/puppers

tar -xzvf /opt/puppers_0.0.2_linux_amd64.tar.gz -C /opt/puppers

nohup /opt/puppers/puppers &