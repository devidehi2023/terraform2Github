# File: terraform/main.tf
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "Example Bucket3"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example_bucket.id
  rule {
    #object_ownership = "BucketOwnerPreferred"
    object_ownership = "ObjectWriter"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example_bucket.id
  acl    = "private"
}