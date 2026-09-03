#!/bin/sh
set -e

echo "=== Checking Listmonk Database ==="
# Try upgrade first (safe, preserves existing data). If that fails (not installed), run install once.
./listmonk --upgrade --config /listmonk/config.toml --yes || ./listmonk --install --config /listmonk/config.toml --yes || true

echo "=== Starting Listmonk Web Server ==="
exec ./listmonk --config /listmonk/config.toml
