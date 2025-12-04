variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "bucket_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "tag" {
  type        = map(string)
  description = "Tags for the S3 bucket"
  default     = {}
}
variable "acl" {
  description = "The ACL to apply to the S3 bucket"
  type        = string
  default     = "private"
}
