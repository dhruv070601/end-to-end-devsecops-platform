#!/usr/bin/env bash
set -euo pipefail
ENV_NAME="${1:?environment required}"
IMAGE="${2:?image required}"
echo "Deploying $IMAGE to $ENV_NAME"
echo "Reference hook: integrate kubectl, Helm, Docker Compose or OCI deployment."
