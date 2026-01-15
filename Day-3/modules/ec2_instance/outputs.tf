output "ec2_id" {
  value = aws_instance.demo.id
}

output "public_ip_ec2" {
  value = aws_instance.demo.public_ip
}