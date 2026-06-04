# 🐳 Docker & Kubernetes DevOps

Production-ready infrastructure automation with Docker, Kubernetes, Terraform, and monitoring.

## Features
- ✅ Multi-stage Docker builds
- ✅ Docker Compose orchestration
- ✅ Kubernetes manifests (YAML)
- ✅ Terraform IaC (GCP, AWS)
- ✅ Prometheus + Grafana monitoring
- ✅ GitLab CI/CD pipeline
- ✅ Helm charts for deployments

## Tech Stack
- Docker 24.x
- Kubernetes 1.28+
- Terraform
- Prometheus & Grafana
- GitLab CI
- Helm

## Quick Start

### Local Docker Dev
```bash
docker-compose up -d
```

### Deploy to K8s
```bash
kubectl apply -f k8s/
```

### Terraform Deploy (GCP)
```bash
cd terraform
terraform init
terraform apply
```

## Project Structure
```
├── docker/         # Dockerfiles
├── k8s/            # Kubernetes manifests
├── terraform/      # IaC (GCP/AWS)
├── monitoring/     # Prometheus + Grafana
├── scripts/        # Helper scripts
└── helm/           # Helm charts
```

## License
MIT
