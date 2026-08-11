output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "vpc_name" {
  value = aws_vpc.vpc.tags.Name
}
output "security_group_ids" {
  value = [aws_security_group.ec2_sg.id]
} 


output "subnet_id" {
  value = aws_subnet.pubsub-1a.id
}