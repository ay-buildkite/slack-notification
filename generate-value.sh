#!/bin/bash
set -euo pipefail
value=$(openssl rand -hex 3 || echo $RANDOM)
buildkite-agent meta-data set "MY_VALUE" "$value"
echo "Generated: $value"
