variable "project_name" {
}

variable "project_environment" {
}

variable "ami_instance" {
  type = string
  default = "ami-0fb653ca2d3203ac1"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "sg_ports_in" {
  type = list(number)
  default = [22, 80, 443]
}

variable "sg_ports_out" {
  type = list(number)
  default = [0]
}
