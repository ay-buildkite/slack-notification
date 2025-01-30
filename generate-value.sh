#!/bin/bash
set -euo pipefail  # Enable strict error handling

VALUE=$(openssl rand -hex 12 2> /dev/null || date +%s | sha256sum | base64 | head -c 16)

VALUE=$(echo "$VALUE" | tr -d '[:space:]')
if [[ -z "$VALUE ]]; then
  echo ":x: Error: Generate value is empty!"
  exit 1
fi

echo "$VALUE" > output.txt
echo "✅ Generated value: $(cat output.txt)"
