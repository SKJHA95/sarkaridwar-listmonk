#!/bin/sh
set -e

echo "=== Initializing Listmonk Database Schema ==="
./listmonk --install --config /listmonk/config.toml --yes || true
./listmonk --upgrade --config /listmonk/config.toml --yes || true

echo "=== Starting Listmonk Web Server ==="
exec ./listmonk --config /listmonk/config.toml
