# Variables used in other tf files
# 
# To put the secrets outside of source controll, use the
# optional terraform.tfvars file.

variable "aws_access_key" {
  description = "The AWS access key"
  default = "### Put your own key in here ###"
}
variable "aws_secret_key" {
  description = "The AWS secret key"
  default = "### Put your own sec in here ###"
}

variable "aws_region" {
  description = "The AWS region to work on"
  default = "us-west-1"
}
