#!/usr/bin/env bash
#
# Setup script for kakariko server.
#
# This script should be idempotent.
#
set -euo pipefail

# Install system wide packages
apt install openssh-server git

### Configs to be copied over

## sshd
# sshd_config files
cp etc/ssh/sshd_config.d/* /etc/ssh/sshd_config.d/

# Restart sshd
systemctl restart sshd
