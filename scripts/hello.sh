#!/usr/bin/env bash
set -euo pipefail

NAME="$1"
NOW="$(date -Is 2>/dev/null || date)"
SHA="$(git rev-parse --short HEAD 2>/dev/null || echo 'N/A')"

echo "Date: ${NOW}"
echo "Commit: ${SHA}"
echo "Name: ${NAME}"