#!/bin/bash
set -euo pipefail  # Enable strict error handling

RANDOM_VALUE=$(openssl rand -hex 12)
echo "$RANDOM_VALUE" > output.txt

echo "✅ Generated value: $(cat output.txt)"
