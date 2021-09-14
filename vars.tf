variable "aws_region" { default = "us-east-1" }
variable "key_path" { default = "/root/.ssh/rizchand_nv.pem" }
variable "key_file" { default = "rizchand_nv" }
variable "aws_access_key" { default = "" }
variable "aws_secret_key" { default = "" }

variable "instance_type" { default = "t2.micro" }
variable "aws_amis" { default = "ami-07d0cf3af28718ef8"}


