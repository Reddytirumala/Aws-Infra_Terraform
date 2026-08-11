variable "ec2_sg_name" {
  description = "Name for the EC2 security group"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the security group will be created"
  type        = string
}

