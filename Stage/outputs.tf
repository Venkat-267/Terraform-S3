#Prints S3 Bucket ARN
output "s3_bucket_arn" {
  value       = module.S3_Create.s3_bucket_arn
  description = "The ARN of the S3 bucket"
}

#Prints S3 Bucket ID

output "bucket_id" {
  value = module.S3_Create.bucket_id
  description = "The ID of the S3 bucket"
}