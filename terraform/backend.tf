# File: terraform/backend.tf
terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-12345" # Replace with your S3 bucket name
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks" # Optional, for state locking
  }
}