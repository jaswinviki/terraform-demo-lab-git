resource "aws_instance" "app_server" {
  ami = var.ami_id
  instance_type = var.instance_type_name

  tags = {
    Name = var.instance_name
  }
}