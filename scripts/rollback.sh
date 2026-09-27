#!/usr/bin/env bash
set -euo pipefail
echo "Rollback hook: redeploy the last known-good immutable image."
echo "Integrate with kubectl rollout undo, Helm, or OCI deployment history."
