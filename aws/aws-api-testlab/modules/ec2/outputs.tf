output "instance_ids" {
  value = aws_instance.test[*].id
}

output "public_ips" {
  value = aws_instance.test[*].public_ip
}
