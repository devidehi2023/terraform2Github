# File: terraform/variables.tf
variable "aws_region" {
  description = "AWS region for resource deployment"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "example-bucket-unique-12345" # Ensure this is globally unique
}