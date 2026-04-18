#!/usr/bin/env bash
#
# Setup script for kakariko server.
#
# This script should be idempotent.
#
set -euo pipefail

### Configs to be copied over

## sshd
# sshd_config files
cp -r etc/ssh/sshd_config.d/ /etc/ssh/sshd_config.d/

# Restart sshd
systemctl restart sshd