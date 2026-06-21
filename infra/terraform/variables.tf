variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "cloud-monitoring-dashboard"
}

variable "instance_type" {
  description = "EC2 instance type for the monitoring server"
  type        = string
  default     = "t3.small"
}

variable "public_key_path" {
  description = "Path to the public SSH key used for EC2 access"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "Your public IP address in CIDR format for SSH access"
  type        = string
}

variable "allowed_grafana_cidr" {
  description = "Your public IP address in CIDR format for Grafana access"
  type        = string
}

variable "allowed_prometheus_cidr" {
  description = "Your public IP address in CIDR format for Prometheus access"
  type        = string
}
