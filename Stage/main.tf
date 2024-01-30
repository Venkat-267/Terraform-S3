terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "S3_Create" {
  source = "../modules/S3Create"
  bucket_name = var.bucket_name
}