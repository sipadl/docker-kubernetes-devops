#!/bin/bash
set -e

echo "🔍 Scanning Docker images for vulnerabilities..."

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
  aquasec/trivy image --severity HIGH,CRITICAL \
  fadelmuhammad/api-service:latest

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
  aquasec/trivy image --severity HIGH,CRITICAL \
  fadelmuhammad/web-app:latest

echo "✅ Security scan complete!"
