variable "project_name" {
}

variable "project_environment" {
}

variable "ami_instance" {
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "volume_size" {
  type = number
  default = 15
}

variable "sg_ports_in" {
  type = list(number)
  default = [22, 80, 443]
}

variable "sg_ports_out" {
  type = list(number)
  default = [0]
}
