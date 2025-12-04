terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "admin_user" {
  source = "../../modules/iam_user_group"

  group_name = "test-admin-group"
  user_name  = "test-admin-user-1"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

// create s3 bucket
module "aws_s3_bucket" {
  source            = "../../modules/s3_bucket"
  bucket_name       = "nahidh597-test-bucket-12345"
  bucket_versioning = true
  tag = {
    Environment = "dev"
    Project     = "terraform-aws-infra"
  }
}
