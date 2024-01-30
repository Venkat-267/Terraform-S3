# Terraform AWS S3 Bucket Module

This Terraform module creates an S3 bucket on AWS.

## Initial Setup
- Make sure to have Terraform installed by checking command `terraform`.
- Make sure to have AWS CLI installed and Set Up the User Access Key and Password by command `aws configure`
- Change AWS Region as per wish in file `main.tf` in line 2 eg:`region = "us-east-1"`

## Variable Inputs

- `bucket_name` (Required): The name of the S3 bucket.
- `bucket_acl` (Optional, Default: "true"): The access control list (ACL) for the bucket : block_public_acls, block_public_policy, ignore_public_acls, restrict_public_buckets

## Commands to Change Variables
For Linux/ WSL Ubuntu, type the following commands in terminal before PLAN
- `export TF_VAR_bucket_name="(YOUR BUCKET NAME)"`
- `export TF_VAR_block_public_acls="(true/false)"`
- `export TF_VAR_block_public_policy="(true/false)"`
- `export TF_VAR_ignore_public_acls="(true/false)"`
- `export TF_VAR_restrict_public_buckets="(true/false)"`

## Module Outputs

- `bucket_id`: The ID of the created S3 bucket.
- `s3_bucket_arn`: The ARN of the created S3 bucket.

## To RUN

- `terraform init`
- `terraform plan`
- `terraform apply` then type `yes`