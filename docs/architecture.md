# Architecture
## Delivery path
1. Git push triggers Jenkins.
2. Jenkins runs automated tests.
3. SonarQube analyzes code and the quality gate blocks bad builds.
4. Docker creates an immutable application image.
5. Trivy blocks HIGH/CRITICAL image findings.
6. Versioned artifacts are published to Nexus.
7. DEV deployment runs smoke validation.
8. UAT approval gates production.
9. PROD deploy uses the same immutable build.
10. Health and metrics feed Prometheus/Grafana.
## Security boundaries
Secrets stay in Jenkins Credentials. Source contains no credentials. Promotion uses immutable versions rather than rebuilding per environment.
