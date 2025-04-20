# Terraform AWS Deployment with GitHub Actions

This repository demonstrates how to deploy AWS resources using Terraform and GitHub Actions.

## Prerequisites

- AWS account with Access Key ID and Secret Access Key
- S3 bucket and DynamoDB table for Terraform state (optional but recommended)
- GitHub repository with Secrets configured for `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`

## Setup Instructions

1. **Create S3 Bucket and DynamoDB Table for State Management**:

   - Create an S3 bucket for storing Terraform state.
   - (Optional) Create a DynamoDB table for state locking.
   - Update `terraform/backend.tf` with your bucket and table names.

2. **Configure GitHub Secrets**:

   - Go to your repository's Settings &gt; Secrets and variables &gt; Actions.
   - Add `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.

3. **Push Code to GitHub**:

   - Commit and push the Terraform code and workflow files to your repository.
   - The workflow will trigger on push to the `main` branch or on pull requests.

4. **Monitor Deployment**:

   - Check the Actions tab in your GitHub repository to monitor the workflow execution.

## Workflow Details

- **Terraform Plan**: Runs on pull requests to preview changes.
- **Terraform Apply**: Runs on push to the `main` branch to deploy resources.
- **State Management**: Uses an S3 backend with optional DynamoDB locking to prevent state conflicts.

## Notes

- Ensure the S3 bucket name in `variables.tf` is globally unique.
- Replace `terraform-state-bucket-12345` and `terraform-locks` in `backend.tf` with your actual bucket and table names.
- For production, consider using OpenID Connect (OIDC) instead of static credentials for better security.