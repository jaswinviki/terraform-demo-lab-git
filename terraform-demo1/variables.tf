variable "ami_id" {
  type = string
  default = "ami-0b0dcb5067f052a63"
}

variable "instance_type_name" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = string
  default = "terraform-session-1"
}

variable "provider_region" {
  type = string
  default = "us-east-1"
}