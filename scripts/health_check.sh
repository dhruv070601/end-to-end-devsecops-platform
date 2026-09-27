#!/usr/bin/env bash
set -euo pipefail
ENV_NAME="${1:?environment required}"
case "$ENV_NAME" in dev) URL="$DEV_URL";; uat) URL="$UAT_URL";; prod) URL="$PROD_URL";; *) exit 2;; esac
curl -fsS "$URL/health" >/dev/null
echo "$ENV_NAME health check passed"
