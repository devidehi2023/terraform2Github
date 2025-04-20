# File: terraform/variables.tf
#changes Variable values
variable "aws_region" {
  description = "AWS region for resource deployment"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "dev4me-West1-20042025" # Ensure this is globally unique
}