module "vpc" {
  source     = "../Module/vpc"
  CIDR_vpc   = var.CIDR_vpc
  vpc_region = var.vpc_region
  vpc_name   = var.vpc_name
}

module "s3" {
  source = "../Module/s3"
  s3_bucket = var.s3_bucket
  Environment = var.Environment
}