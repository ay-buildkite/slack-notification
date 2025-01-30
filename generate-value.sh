#!/bin/bash
set -euo pipefail  # Enable strict error handling

value=$(openssl rand -hex 12 2> /dev/null || date +%s | sha256sum | base64 | head -c 16)

value=$(echo "$value" | tr -d '[:space:]')
if [[ -z "$value" ]]; then
  echo "Error: Generate value is empty!"
  exit 1
fi

echo "$value" > output.txt
echo "Generated value: $(cat output.txt)"
