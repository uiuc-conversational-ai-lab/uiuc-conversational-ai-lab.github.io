#!/usr/bin/env bash
# Thin wrapper that delegates to fetch_tweets.py.
# Rerun whenever _data/featured_tweets.yml changes.
set -euo pipefail
cd "$(dirname "$0")/.."
exec python3 scripts/fetch_tweets.py "$@"
