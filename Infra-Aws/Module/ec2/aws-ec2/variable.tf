variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0b6d9d3d33ba97d99" # Default to Amazon Linux 2 AMI in us-east-1
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
}
variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}
variable "subnet_id" {
  description = "ID of the subnet where the EC2 instance will be launched"
  type        = string
}
variable "security_group_ids" {
  description = "List of security group IDs to associate with the EC2 instance"
  type        = list(string)
}
/*variable "private_ip" {
  description = "Private IP address for the EC2 instance"
  type        = string
}*/
variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the EC2 instance"
  type        = bool
  default     = true
}
variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
}
variable "Environment" {
  description = "Environment for the EC2 instance"
  type        = string
}

variable "region" {
  description = "AWS region for the EC2 instance"
  type        = string
}

#-----------------SG-Variable-----------------
/*
variable "ec2_sg_name" {
  description = "Name for the EC2 security group"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the security group will be created"
  type        = string
}
*/
