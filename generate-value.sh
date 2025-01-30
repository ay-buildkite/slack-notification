#!/bin/bash
set -euo pipefail  # Halt on errors

# Generate a value (no whitespace, alphanumeric only)
value=$(openssl rand -hex 12 2>/dev/null | tr -cd 'a-f0-9' || echo $RANDOM$RANDOM)

# Final validation
if [[ -z "$value" ]]; then
  echo "❌ Error: Empty value generated!" >&2
  exit 1
fi

# Write output (no newline)
echo -n "$value" > output.txt
echo "Generated value: $value"
