# 🐳 Docker & Kubernetes DevOps

Production-ready infrastructure automation with Docker, Kubernetes, Terraform, and monitoring. Reference architecture for deploying microservices at scale.

![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?logo=kubernetes)
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?logo=prometheus)
![Grafana](https://img.shields.io/badge/Grafana-F46800?logo=grafana)
![Make](https://img.shields.io/badge/GNU_Make-4EAA25)

## ✨ Features

- 🐳 **Multi-stage Dockerfiles** — Go, Node.js, Python optimized builds
- ☸️ **K8s Manifests** — Deployment, Service, HPA, PDB, RBAC, NetworkPolicy
- 📊 **Monitoring Stack** — Prometheus + Grafana ready
- 🔧 **Makefile** — One-command build, push, deploy workflows
- 🌐 **Networking** — Network policies for pod-to-pod security
- 📦 **Horizontal Scaling** — HPA with CPU/memory metrics
- 🔒 **Security** — RBAC roles, network policies, pod disruption budgets

## 📁 Project Structure

```
├── docker/                  # Dockerfiles per service
│   ├── Dockerfile.go
│   ├── Dockerfile.node
│   └── Dockerfile.python
├── k8s/                     # Kubernetes manifests
│   ├── namespace.yaml
│   ├── api-deployment.yaml
│   ├── services.yaml
│   ├── hpa.yaml             # Horizontal Pod Autoscaler
│   ├── pdb.yaml             # Pod Disruption Budget
│   ├── rbac.yaml            # Role-Based Access Control
│   └── network-policy.yaml
├── monitoring/
│   └── prometheus.yml       # Prometheus scrape config
├── docker-compose.yml       # Local dev compose
├── Makefile                 # Build & deploy commands
└── scripts/                 # Automation scripts
```

## 🚀 Quick Start

```bash
# Local dev
docker-compose up -d

# Build image
make build

# Push to registry
make push

# Deploy to Kubernetes
make deploy

# Teardown
make teardown
```

## Kubernetes Architecture

```
┌─────────────────────────────────────────┐
│              Kubernetes Cluster          │
│  ┌──────────┐  ┌──────────┐  ┌───────┐ │
│  │ API Pod  │  │ Worker   │  │Redis  │ │
│  │ (Replica)│  │ Pods     │  │Cache  │ │
│  └────┬─────┘  └────┬─────┘  └───┬───┘ │
│       │              │            │      │
│  ┌────┴──────────────┴────────────┘     │
│  │        ClusterIP Services            │
│  └──────────────┬───────────────────────┘
│                 │                        │
│  ┌──────────────┴───────────────────────┐
│  │      Ingress / LoadBalancer          │
│  └──────────────────────────────────────┘
│                                         │
│  ┌─────────┐  ┌─────────┐              │
│  │Prometheus│  │ Grafana │              │
│  │  (mon)  │  │  (dash) │              │
│  └─────────┘  └─────────┘              │
└─────────────────────────────────────────┘
```

## 📄 License

MIT
