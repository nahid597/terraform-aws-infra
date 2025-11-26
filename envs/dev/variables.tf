variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile name from ~/.aws/credentials"
  type        = string
  default     = "default"
}
