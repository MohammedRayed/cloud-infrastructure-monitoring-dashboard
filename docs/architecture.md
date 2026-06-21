# Architecture

## Cloud Infrastructure Monitoring Dashboard

```text
Developer Machine
│
├── Terraform
│   ├── Provisions AWS EC2
│   ├── Creates Security Group
│   ├── Creates SSH Key Pair Reference
│   └── Uses User Data to Install Docker
│
└── GitHub Repository
    └── Docker Compose Monitoring Stack

AWS EC2 Instance
│
├── Docker Compose
│   ├── Prometheus
│   │   ├── Scrapes Node Exporter
│   │   ├── Scrapes cAdvisor
│   │   └── Scrapes Spring Boot Actuator locally/dev
│   │
│   ├── Grafana
│   │   └── Visualizes infrastructure and container metrics
│   │
│   ├── Node Exporter
│   │   └── Exposes Linux host metrics
│   │
│   └── cAdvisor
│       └── Exposes Docker container metrics
│
└── AWS Security Group
    ├── SSH restricted to trusted IP
    ├── Grafana restricted to trusted IP
    └── Prometheus restricted to trusted IP
