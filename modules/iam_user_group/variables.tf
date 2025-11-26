variable "group_name" {
  type = string
}

variable "policy_arn" {
  type    = string
  default = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "user_name" {
  type = string
}

