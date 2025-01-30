#!/bin/bash
set -euo pipefail  # Enable strict error handling

value=$(openssl rand -hex 12 2> /dev/null || date +%s | sha256sum | base64 | head -c 16)
echo -n "$value" > output.txt
