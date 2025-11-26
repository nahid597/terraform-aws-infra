# Terraform AWS Infrastructure

This repository contains Terraform configurations for managing AWS infrastructure.

## Project Structure

```
.
├── envs/              # Environment-specific configurations
│   └── dev/          # Development environment
├── global/           # Global/shared configurations
│   ├── providers.tf  # Provider configurations
│   └── variables.tf  # Global variables
└── modules/          # Reusable Terraform modules
    └── iam_user_group/
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- AWS CLI configured with credentials
- AWS profile set up in `~/.aws/credentials`

## Configuration

### AWS Profile Setup

Update the AWS profile and region in `envs/dev/terraform.tfvars`:

```hcl
aws_region  = "us-east-1"
aws_profile = "your-profile-name"
```

## Usage

### Initialize Terraform

```bash
cd envs/dev
terraform init
```

### Plan Changes

```bash
terraform plan
```

### Apply Changes

```bash
terraform apply
```

### Destroy Resources

```bash
terraform destroy
```

## Formatting

Format all Terraform files:

```bash
terraform fmt -recursive
```

## Modules

### iam_user_group

Creates an IAM user and group with specified policy.

**Usage:**
```hcl
module "admin_user" {
  source = "../../modules/iam_user_group"

  group_name = "admin-group"
  user_name  = "admin-user"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
```

## License

MIT
