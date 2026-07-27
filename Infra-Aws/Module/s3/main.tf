resource "aws_s3_bucket" "s3" {
  bucket = var.s3_bucket

  tags = {
    Name        = var.s3_bucket
    Environment = var.Environment
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3.id

  versioning_configuration {
    status = "Enabled"
  }
}