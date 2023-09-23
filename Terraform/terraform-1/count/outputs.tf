output "private_ip" {
  value = aws_instance.count-understnding[*].private_ip
}