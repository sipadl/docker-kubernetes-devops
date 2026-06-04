.PHONY: help up down build deploy scan logs

help:
	@echo "🐳 Docker & Kubernetes DevOps - Available Commands"
	@echo ""
	@echo "  make up             - Start all services (docker-compose)"
	@echo "  make down           - Stop all services"
	@echo "  make build          - Build Docker images"
	@echo "  make deploy         - Deploy to Kubernetes"
	@echo "  make scan           - Security scan (Trivy)"
	@echo "  make logs           - View service logs"

up:
	docker-compose up -d
	@echo "✅ Services running:"
	@echo "  API: http://localhost:8080"
	@echo "  Web: http://localhost:3000"
	@echo "  Prometheus: http://localhost:9090"
	@echo "  Grafana: http://localhost:3001 (admin/admin123)"

down:
	docker-compose down -v

build:
	bash scripts/build-and-push.sh

deploy:
	bash scripts/deploy-k8s.sh production

scan:
	bash scripts/security-scan.sh

logs:
	docker-compose logs -f
