#!/bin/bash
set -e

echo "🚀 Building Docker images..."
docker-compose build

echo "📦 Pushing to Docker Hub..."
docker tag api-service:latest fadelmuhammad/api-service:latest
docker tag web-app:latest fadelmuhammad/web-app:latest
docker push fadelmuhammad/api-service:latest
docker push fadelmuhammad/web-app:latest

echo "✅ Images pushed successfully!"
