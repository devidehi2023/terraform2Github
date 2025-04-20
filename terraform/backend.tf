# File: terraform/backend.tf
terraform {
  backend "s3" {
    bucket         = "statefilebucket20042025" # Replace with your S3 bucket name
    key            = "state/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks" # Optional, for state locking
  }
}