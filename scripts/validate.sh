#!/usr/bin/env bash
set -euo pipefail
node --check app/app.js
node --test app/app.test.js
printf 'DevSecOps project validation passed.\n'
