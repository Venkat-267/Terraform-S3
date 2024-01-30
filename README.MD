# Terraform AWS S3 Bucket Module

This Terraform module creates an S3 bucket on AWS.

## Variable Inputs

- `bucket_name` (Required): The name of the S3 bucket.
- `bucket_acl` (Optional, Default: "true"): The access control list (ACL) for the bucket : block_public_acls, block_public_policy, ignore_public_acls, restrict_public_buckets

## Module Outputs

- `bucket_id`: The ID of the created S3 bucket.
- `s3_bucket_arn`: The ARN of the created S3 bucket.
