#Prints S3 Bucket ARN
output "s3_bucket_arn" {
  value       = aws_s3_bucket.s3_bucket.arn
  description = "The ARN of the S3 bucket"
}

#Prints S3 Bucket ID

output "bucket_id" {
  value = aws_s3_bucket.s3_bucket.id
}