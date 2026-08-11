output "instance_name" {
  value = aws_instance.ec2.tags["Name"]
}
output "instance_public_ip" {
  value = aws_instance.ec2.public_ip
}
output "instance_private_ip" {
  value = aws_instance.ec2.private_ip
}
output "instance_arn" {
  value = aws_instance.ec2.arn
}
output "instance_state" {
  value = aws_instance.ec2.instance_state
}

