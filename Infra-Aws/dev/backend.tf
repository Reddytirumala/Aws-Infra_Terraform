terraform {
  backend "s3" {
    bucket         = "tirumalaus1-tf-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
