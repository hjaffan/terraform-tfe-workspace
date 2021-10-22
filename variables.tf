variable "workspace_name" {}

variable "org_name" {}

variable "aws_region" {
    default = "us-east-1"
}

variable "aws_access_key_id" {}

variable "aws_secret_access_key" {
    sensitive = true
}