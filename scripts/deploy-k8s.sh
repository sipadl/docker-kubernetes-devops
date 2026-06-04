#!/bin/bash
set -e

NAMESPACE=${1:-default}
RELEASE_NAME=${2:-myapp}

echo "🚀 Deploying to Kubernetes (namespace: $NAMESPACE)..."

# Create namespace if doesn't exist
kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -

# Create secrets
kubectl create secret generic db-secret \
  --from-literal=username=appuser \
  --from-literal=password=secure_password_here \
  -n $NAMESPACE \
  --dry-run=client -o yaml | kubectl apply -f -

# Apply manifests
echo "📝 Applying Kubernetes manifests..."
kubectl apply -f k8s/ -n $NAMESPACE

echo "⏳ Waiting for rollout..."
kubectl rollout status deployment/api-service -n $NAMESPACE --timeout=5m

echo "✅ Deployment complete!"
echo "Namespace: $NAMESPACE"
echo "Run: kubectl port-forward -n $NAMESPACE svc/api-service 8080:80"
