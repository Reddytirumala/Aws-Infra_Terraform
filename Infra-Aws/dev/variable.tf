variable "vpc_name" {
  type = string
}

variable "CIDR_vpc" {
  type = string
}
variable "vpc_region" {
  type = string
}

# S3 Bucket Variables

variable "s3_bucket" {
  type = string
  description = "s3 bucket name"
}
variable "Environment" {
  type = string
}
  
variable "aws_region" {
  type = string
  description = "aws Region"
}