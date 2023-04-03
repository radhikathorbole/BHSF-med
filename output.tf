output "public_ip" {
  description = "Public IP address of EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "private_ip" {
  description = "Public IP address of EC2 instance"
  value       = aws_instance.app_server.private_ip
}