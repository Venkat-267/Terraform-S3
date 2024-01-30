#Variable for S3 Bucket name

variable "bucket_name" {
  description = "The name of s3 bucket"
  type = string
}

#Variable for Access Control List
variable "block_public_acls" {
  description = "Specifies whether Amazon S3 should block public ACLs for buckets and objects."
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Specifies whether Amazon S3 should block public bucket policies."
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Specifies whether Amazon S3 should ignore public ACLs for buckets and objects."
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Specifies whether Amazon S3 should restrict public bucket policies."
  type        = bool
  default     = true
}