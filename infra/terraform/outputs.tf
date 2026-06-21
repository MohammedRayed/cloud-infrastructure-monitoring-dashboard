output "ec2_public_ip" {
  description = "Public IP address of the monitoring EC2 instance"
  value       = aws_instance.monitoring_server.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the EC2 instance"
  value       = "ssh -i ~/.ssh/monitoring-dashboard-key ubuntu@${aws_instance.monitoring_server.public_ip}"
}

output "grafana_url" {
  description = "Grafana URL"
  value       = "http://${aws_instance.monitoring_server.public_ip}:3000"
}

output "prometheus_url" {
  description = "Prometheus URL"
  value       = "http://${aws_instance.monitoring_server.public_ip}:9090"
}

output "cadvisor_url" {
  description = "cAdvisor URL"
  value       = "http://${aws_instance.monitoring_server.public_ip}:8081"
}
