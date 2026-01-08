resource "aws_instance" "example" {
  for_each = var.ec2instances
  ami           = var.amar-ami
  instance_type = each.value
  #count = var.numvm
  # attaching security group to ec2 vm 
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]

  tags = {
    #Name = "${var.vm-name}-${count.index}"
    Name = "amar-vm-${each.key}"
  }
}