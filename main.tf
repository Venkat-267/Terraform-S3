provider "aws" {
  region = "us-east-2"
}

module "S3" {
  source = "../modules/S3"
}