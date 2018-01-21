#!/usr/bin/env sh

set -euo pipefail

cd $(dirname $0)

# Update and install apk packages.

echo 'Installing Python.'
apk --update add \
    py-crypto \
    py-cryptography \
    py-cffi \
    python \
    ca-certificates \
    tzdata

# Install pip.

echo 'Installing pip.'
python /docker/get-pip.py

# Installing ansible.

echo 'Installing Ansible.'
pip install ansible

echo 'Installing netaddr'
pip install netaddr

echo -n 'Cleaning up container…'

rm -rf \
    /docker \
    /var/cache/apk/*

echo ' OK!'
