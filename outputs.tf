output "amar-vm-publicIP" {
  value = aws_instance.example.*.public_ip
}

output "amar-vm-id" {
  value = [ for i in aws_instance.example: i.id ]
}