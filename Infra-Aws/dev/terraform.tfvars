#-----------VPC variables---
vpc_name   = "MY-VPC"
CIDR_vpc   = "10.0.0.0/16"
vpc_region = "us-east-1"

aws_region = "us-east-1"

#-----------S3 Bucket variables---

s3_bucket   = "tirumalaus1-tf-state-bucket"
Environment = "Dev"

# -----------EC2 instance variables---
ami_id                      = "ami-0f8a61b66d1accaee"
instance_type               = "t2.micro"
instance_name               = "my-ec2-instance"
key_name                    = "My-new-Keypair"
associate_public_ip_address = true

#----------- Security Group variables---
ec2_sg_name = "my-ec2-sg"