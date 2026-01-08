variable "amar-ami" {
    type = string
    description = "this is gonna store aws NV region ami ID"
    default = "ami-068c0051b15cdb816"
}

variable "vm-size" {
    type = string
    #default = "t3.micro"
  
}

variable "vm-name" {
    type = string
    #default = "amar-vm1"
  
}
variable "numvm" {
  type = number
  description = "this is for number of vm to be created"
}