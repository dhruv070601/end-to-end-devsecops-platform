# End-to-End DevSecOps Platform
A production-style reference platform demonstrating CI/CD, code quality, security scanning, artifact management, deployment promotion and observability.
## Flow
Git -> Jenkins -> Test -> SonarQube -> Quality Gate -> Docker -> Trivy -> Nexus -> DEV -> Smoke Test -> UAT -> PROD -> Health -> Prometheus/Grafana
## Highlights
- Jenkins Declarative Pipeline with gated promotion
- SonarQube analysis and quality-gate enforcement
- Container build and Trivy vulnerability scanning
- Nexus artifact publishing pattern
- DEV/UAT/PROD deployment scripts with rollback
- Prometheus/Grafana observability integration points
- Failure handling, credentials boundaries and operational runbook
- GitHub Actions configuration validation
## Run
Review docs, configure config/environments.env, run scripts/validate.sh, then configure Jenkins credentials and shared services.
## Interview story
This project brings together enterprise CICD disciplines: automation, quality gates, artifact lifecycle, controlled promotion, rollback and monitoring.
