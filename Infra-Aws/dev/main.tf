module "vpc" {
  source     = "../Module/vpc"
  CIDR_vpc   = var.CIDR_vpc
  vpc_region = var.vpc_region
  vpc_name   = var.vpc_name
}

module "s3" {
  source      = "../Module/s3"
  s3_bucket   = var.s3_bucket
  Environment = var.Environment
}

module "ec2_sg" {
  source      = "../Module/ec2/aws-sg"
  ec2_sg_name = var.ec2_sg_name
  vpc_id      = module.vpc.vpc_id
}




module "ec2" {
  source = "../Module/ec2/aws-ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  region        = var.aws_region
  subnet_id = module.vpc.subnet_id

  security_group_ids = [
    module.ec2_sg.ec2_sg_id
  ]

  associate_public_ip_address = var.associate_public_ip_address

  instance_name = var.instance_name
  Environment   = var.Environment
}


