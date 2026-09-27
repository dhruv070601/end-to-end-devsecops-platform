# Operations Runbook
## Failed quality gate
Inspect SonarQube findings, fix the branch, rerun and verify the gate.
## Vulnerability failure
Review Trivy severity and base-image CVEs. Patch dependencies or the image before promotion.
## Deployment failure
Stop promotion, inspect logs and health checks, then restore the last known-good image.
## Production rollback
Use the platform rollback mechanism or redeploy the previously approved image tag.
## Secrets
Rotate credentials in Jenkins/Nexus; never commit tokens, passwords or private keys.
