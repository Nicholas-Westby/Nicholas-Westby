#!/usr/bin/env bash
set -euo pipefail

if [ -z "$(git config --get core.hooksPath || true)" ]; then
  git config core.hooksPath .githooks
  echo "setup: core.hooksPath -> .githooks"
else
  echo "setup: core.hooksPath already set to $(git config --get core.hooksPath)"
fi
