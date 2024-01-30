#Create the S3 Bucket

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  lifecycle {
    prevent_destroy = true #Activates Prevent Destroy with Lifecycle for S3 Bucket
  }
}

#Access Control List of the S3 Bucket

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.s3_bucket.id
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

#Versoning Control of the S3 bucket

resource "aws_s3_bucket_versioning" "enable" {
    bucket = aws_s3_bucket.s3_bucket.id
    versioning_configuration {
      status = "Enabled" # Allows Versioning of files stored in S3 Bucket
    }
}