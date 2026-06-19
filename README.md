# Cloud Infrastructure Monitoring Dashboard

A production-style monitoring dashboard built with Docker, Prometheus, Grafana, Node Exporter, cAdvisor, Nginx, and Spring Boot Actuator.

## Project Goal

The goal of this project is to monitor Linux server metrics, Docker container metrics, and application health using a cloud/devops-style monitoring stack.

This project demonstrates practical skills in:

- Docker
- Docker Compose
- Linux server monitoring
- Prometheus metrics collection
- Grafana dashboards
- Container monitoring
- Application health checks
- Nginx reverse proxy
- Cloud deployment concepts
- Production troubleshooting

## Tech Stack

- Docker
- Docker Compose
- Prometheus
- Grafana
- Node Exporter
- cAdvisor
- Spring Boot Actuator
- Nginx
- Linux
- AWS EC2

## Day 1 Progress

- Created project repository
- Added Docker Compose base
- Created monitoring network
- Created persistent Docker volumes
- Added starter folder structure
- Added placeholder Prometheus configuration
- Verified Docker Compose with a test Nginx container

## Day 2 Progress

Added Prometheus and Node Exporter to begin collecting Linux/server infrastructure metrics.

### What was added

- Prometheus container for metrics collection
- Node Exporter container for Linux/server metrics
- Docker Compose service definitions
- Shared Docker monitoring network
- Persistent Prometheus volume
- Prometheus scrape configuration
- Verified Prometheus target health
- Queried CPU, memory, filesystem, and network metrics

### Day 2 Verification

Prometheus UI:

http://localhost:9090

Node Exporter metrics:
- http://localhost:9100/metrics

Prometheus targets page:
http://localhost:9090/targets

Expected targets:
prometheus      UP
node-exporter   UP

## Troubleshooting Notes

### Docker daemon not running

During Day 1, Docker Compose failed because Docker Desktop was not running. The fix was to open Docker Desktop and wait for the Docker engine to start.

### Prometheus target not UP

If a target shows DOWN in Prometheus, check:

- The container is running with `docker ps`
- The service name in `prometheus.yml` matches the Docker Compose service name
- Both containers are on the same Docker network
- The exporter port is correct
- Prometheus logs show whether the scrape failed
```
