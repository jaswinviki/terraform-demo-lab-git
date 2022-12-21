output "instance_id" {
  value = aws_instance.app_server.id
}

output "instance_arn" {
  value = aws_instance.app_server.arn
}

output "instance_public_ip" {
  value = aws_instance.app_server.public_ip
}

output "volume_id" {
  value = aws_instance.app_server.root_block_device.0.volume_id
}