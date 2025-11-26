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
