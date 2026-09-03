#!/bin/sh
set -e

echo "=== Initializing Listmonk Database with Superadmin ==="
export LISTMONK_ADMIN_USER="listmonk"
export LISTMONK_ADMIN_PASSWORD="SarkariDwar_Admin_2026!"

./listmonk --install --config /listmonk/config.toml --yes || true
./listmonk --upgrade --config /listmonk/config.toml --yes || true

echo "=== Starting Listmonk Web Server ==="
exec ./listmonk --config /listmonk/config.toml
