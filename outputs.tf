output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = aws_instance.demo[*].id
}

output "public_ips" {
  description = "Public IPs of the EC2 instances"
  value       = aws_instance.demo[*].public_ip
}

output "public_dns" {
  description = "Public DNS names of the EC2 instances"
  value       = aws_instance.demo[*].public_dns
}
